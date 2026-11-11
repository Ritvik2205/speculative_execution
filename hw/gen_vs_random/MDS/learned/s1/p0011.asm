.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and al, 84
test edi, -1252846009
xor sil, 27
or ax, -7150
or rsi, 96
and sil, 74
or sil, dil
or al, bl
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and bl, dl
and rax, -731384280
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and dl, dil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
