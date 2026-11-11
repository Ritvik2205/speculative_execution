.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, -263404965
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 68
setnbe dl
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
xor bl, sil
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 56
xor bl, -6
test al, sil
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
