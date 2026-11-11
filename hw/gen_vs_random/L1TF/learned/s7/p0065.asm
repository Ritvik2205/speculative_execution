.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 34
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
cbw
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
cmp bl, dil
and cl, dl
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
