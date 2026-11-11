.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
sub al, cl
inc eax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 28
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
test bl, 84
xor dil, dl
sbb sil, al
sub rsi, 7
xor cl, sil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
