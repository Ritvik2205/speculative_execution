.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
bts rcx, rax
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and dil, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
xor dil, 8
xor dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
btr ax, bx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test dil, -51
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
