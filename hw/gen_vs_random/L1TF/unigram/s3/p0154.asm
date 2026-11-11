.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cx, 38
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
add dl, -40 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 63
add bx, 51
btr rsi, 2
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
lea cx, qword ptr [rsi + rax + 29]
add dl, 120 # instrumentation
adc cl, 66
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
add al, -33 # instrumentation
cmovnl di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
