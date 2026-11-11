.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or sil, -78
and al, dl
test al, bl
xor bl, -27
and dl, sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
or bl, dil
and cl, 79
and ax, -4410
xor dx, 80
xor rsi, -117
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
