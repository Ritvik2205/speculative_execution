.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
cmp bl, cl
and cl, dil
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 97
or al, -57
jmp .bb_0.1
.bb_0.1:
sub al, dl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
mov bl, dl
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
