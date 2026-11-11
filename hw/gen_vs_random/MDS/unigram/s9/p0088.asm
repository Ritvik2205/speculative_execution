.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle cx, ax
cmovz di, di
xor ebx, 5
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
cmovnbe ebx, edi
and cl, -19
xor dil, -3
or sil, dl
cmovnbe bx, cx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
and dl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 22
cmovnbe esi, ecx
test ax, 6113
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsf ax, si
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
btr si, 52
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
