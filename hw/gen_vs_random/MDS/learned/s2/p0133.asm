.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
btr cx, ax
or dil, -78
or sil, al
xor dil, al
xor rax, -1499464454
test dx, di
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
xor cl, al
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
or sil, cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
xor dl, sil
xor ax, 31969
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
