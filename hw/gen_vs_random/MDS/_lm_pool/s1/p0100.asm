.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
xor al, cl
or al, dl
or al, 25
test dil, 46
and eax, 33
or dl, -89
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test cl, 0
or al, 37
and ax, 339
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
