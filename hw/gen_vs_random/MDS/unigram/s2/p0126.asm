.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
test cl, sil
test bl, -114
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and al, 35
xor cl, dil
xor ax, -23364
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
bts cx, 177
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
btr dx, cx
and dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
not edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
