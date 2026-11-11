.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rcx, 51
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
sub bl, -96
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
