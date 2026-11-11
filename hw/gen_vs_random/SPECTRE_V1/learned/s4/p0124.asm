.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
test al, 34
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
sub al, dl
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 86
and sil, 11
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
