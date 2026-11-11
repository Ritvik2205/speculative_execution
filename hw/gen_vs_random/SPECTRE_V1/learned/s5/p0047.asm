.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
not dil
lea rbx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 84
and dl, -111
or ax, 19104
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
xor dil, bl
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add dil, 72
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
