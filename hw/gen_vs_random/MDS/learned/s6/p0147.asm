.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
or al, 37
or al, -75
cmovnp rsi, rdi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
btc dx, 67
or al, 54
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
test dl, dil
or al, -17
test al, dl
test eax, -1634766116
or dl, dil
bt ax, bx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
