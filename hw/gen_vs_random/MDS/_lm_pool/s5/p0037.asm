.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 77
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
xor bx, 48
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and sil, sil
or sil, -78
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
jmp .bb_0.1
.bb_0.1:
or dil, cl
not al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 68
xor rdi, -9
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 86
or sil, dl
bt cx, bx
test cl, al
and eax, -574348013
btr bx, cx
test dl, cl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
