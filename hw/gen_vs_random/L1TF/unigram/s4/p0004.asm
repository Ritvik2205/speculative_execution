.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, -89
lea ax, qword ptr [rsi]
bt ax, di
add al, -34 # instrumentation
setnp sil
or rcx, 88
cmovp ebx, edi
imul bx, cx, 35
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 17
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
add cx, dx
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], dx
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
add cl, -98 # instrumentation
setp bl
add dil, -5 # instrumentation
adc bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
