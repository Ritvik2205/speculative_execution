.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, dl
mov bl, dil
xor al, sil
xchg rax, rbx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
