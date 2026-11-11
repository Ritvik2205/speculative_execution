.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ecx
add al, 64 # instrumentation
cmovnl rax, rdx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 79
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
adc dl, sil
or rax, -263404965
lea cx, qword ptr [rsi + rsi + 59]
xor sil, al
and rdx, 50
add bx, 85
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
add cl, -84 # instrumentation
xchg rdx, rax
dec sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
