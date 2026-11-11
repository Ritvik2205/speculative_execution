.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
test al, 66
test al, dl
and sil, sil
jmp .bb_0.1
.bb_0.1:
xor sil, bl
xor sil, -14
xor cl, 83
btr ax, 193
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
test rax, 1978892575
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and ax, 27170
or dl, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
