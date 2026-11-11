.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
lea si, qword ptr [rcx + rcx + 25]
sbb dil, -93
movzx di, dl
add dil, -101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
cmovle dx, dx
cmovbe eax, ecx
imul al
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 51
test dl, -105
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
sub cl, sil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
