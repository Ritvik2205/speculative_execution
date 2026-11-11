.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
xor rax, -404206377
test bl, -9
or al, -61
bts rdi, rsi
xor dil, -3
or ecx, 25
or edx, esi
and al, 49
or dil, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor bl, -102
and al, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
