.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
test al, -38
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
or sil, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor al, -60
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
or dl, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
cmp rax, 1097504565
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
