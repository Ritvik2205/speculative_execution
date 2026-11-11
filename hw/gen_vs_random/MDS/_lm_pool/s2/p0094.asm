.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -14
and si, -121
or al, sil
or al, 54
and al, 84
xor dil, 124
jmp .bb_0.1
.bb_0.1:
or al, 54
test sil, dl
and sil, -9
bt di, si
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
xor cl, al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
