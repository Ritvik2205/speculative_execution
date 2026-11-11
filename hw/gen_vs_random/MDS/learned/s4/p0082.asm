.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
test eax, -1634766116
or al, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
test dil, -51
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
or sil, al
xor al, 115
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and dil, dl
cmovbe di, cx
bt eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
