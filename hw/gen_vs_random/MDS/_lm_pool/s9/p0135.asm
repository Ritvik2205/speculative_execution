.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
xor sil, -126
test dil, -51
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 63
or sil, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
or al, -75
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and dl, dl
and sil, -56
and al, 82
xor dx, 79
bt ax, di
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
test eax, 1729060510
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
