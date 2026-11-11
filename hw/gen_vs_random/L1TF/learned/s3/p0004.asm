.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
sbb al, -4
inc eax
and bl, 89
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 51
setb al
and bl, bl
adc bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
