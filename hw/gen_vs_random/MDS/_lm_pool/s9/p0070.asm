.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
or rsi, 20
and sil, 89
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
xor al, dl
xor bl, -102
xor al, 9
or sil, -78
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
test rdi, 10
or edx, -1
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and al, -55
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and dil, dil
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
