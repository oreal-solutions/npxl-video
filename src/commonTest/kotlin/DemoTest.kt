import kotlin.test.Test
import kotlin.test.assertEquals

class DemoTest {
    @Test
    fun testAddReturnsCorrectSum(){
        val sum = add(4, 3)
        assertEquals(7, sum)
    }
}