.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 92
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 57
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rsi, 77
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
add al, -25 # instrumentation
sbb cx, ax
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
or bl, dl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
