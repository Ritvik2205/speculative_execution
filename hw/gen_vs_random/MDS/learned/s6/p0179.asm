.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
jmp .bb_0.1
.bb_0.1:
or sil, dil
btr eax, ebx
or sil, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xor dil, dl
xor sil, 27
xor al, 122
bt dx, di
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and al, sil
jmp .bb_0.2
.bb_0.2:
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
