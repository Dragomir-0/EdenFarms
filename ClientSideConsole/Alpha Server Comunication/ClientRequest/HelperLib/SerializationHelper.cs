using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace HelperLib
{
    /// <summary>
    /// Converts to Byte[] and Object --
    /// Byte[] used to send data over TCP
    /// </summary>
    public static class SerializationHelper
    {


        #region Binary Serialization
        /// <summary>
        /// Serialize data to Binary
        /// </summary>
        /// <param name="dataToSerialize">Object to Serialize</param>
        /// <returns></returns>
        public static byte[] BinarySerialization(this object dataToSerialize)
        {
            BinaryFormatter formatter = new BinaryFormatter();
            MemoryStream stream = new MemoryStream();
            //Will be sent: (Data Size subject to change)
            byte[] dataSerialized = new byte[1024];
            try
            {
                //Formats from object to Byte[]
                formatter.Serialize(stream, dataToSerialize);
                dataSerialized = stream.GetBuffer();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                stream.Close();
            }

            return dataSerialized;
        }


        /// <summary>
        /// Deserialize from Binary
        /// </summary>
        /// <param name="dataToDeserialize">Byte[] to deserialize</param>
        /// <returns></returns>
        public static object BinaryDeserialization(this byte[] dataToDeserialize)
        {
            BinaryFormatter formatter = new BinaryFormatter();
            MemoryStream stream = new MemoryStream(dataToDeserialize);
            object dataDeserialized = new object();
            try
            {
                dataDeserialized = formatter.Deserialize(stream);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                stream.Close();
            }

            return dataDeserialized;
        }
        #endregion

        #region XML Serialization

        /// <summary>
        /// XML Serialization
        /// </summary>
        /// <param name="dataToSerialize">Object To Serialize</param>
        /// <param name="filePath">File Location/Name.extention</param>
        public static void XmlSerialization(this object dataToSerialize, string filePath)
        {
            //Clear File stream
            FileStream stream = null;

            try
            {
                //Return Type
                Type type = dataToSerialize.GetType();
                XmlSerializer xmlSerializer = new XmlSerializer(type);
                //Target file
                stream = new FileStream(filePath, FileMode.OpenOrCreate, FileAccess.Write);

                xmlSerializer.Serialize(stream, dataToSerialize);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                stream.Close();
            }
        }
        /// <summary>
        /// XML Deserialization
        /// </summary>
        /// <param name="dataToDeserialize">Object to Deserialize</param>
        /// <param name="filePath">File Location/Name.extention</param>
        /// <returns></returns>
        public static object XmlDeserialization(this object dataToDeserialize, string filePath)
        {
            FileStream stream = null;

            try
            {
                Type type = dataToDeserialize.GetType();
                XmlSerializer xmlSerializer = new XmlSerializer(type);
                stream = new FileStream(filePath, FileMode.Open, FileAccess.Read);

                dataToDeserialize = xmlSerializer.Deserialize(stream);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                stream.Close();
            }

            return dataToDeserialize;
        }

        #endregion
    }
}
