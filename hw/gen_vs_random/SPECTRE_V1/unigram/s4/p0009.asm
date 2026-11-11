.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
or sil, 34
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -89 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 47
add rdx, 95
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 38
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 51
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
cmp bx, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
