.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rcx + rdx + 89]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
sbb dil, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and dl, 59
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
adc cl, -34
xor cl, sil
add dl, dl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
and al, sil
and dl, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
