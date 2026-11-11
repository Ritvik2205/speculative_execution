.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
test sil, -96
and al, sil
and si, -121
xor bl, -88
jmp .bb_0.1
.bb_0.1:
xor cl, 15
or al, bl
and al, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor sil, -126
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and sil, dl
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
