.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and al, 82
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
or al, sil
or bl, sil
jmp .bb_0.1
.bb_0.1:
test al, sil
not dl
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
or bl, 43
xor dl, bl
xor cl, 83
test ax, 6113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
