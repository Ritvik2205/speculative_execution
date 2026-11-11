.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea rsi, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
test dl, -37
add ax, 116
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
add al, bl
and dl, dl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
