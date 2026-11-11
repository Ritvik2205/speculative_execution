.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
btc si, dx
cmp dl, -56
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
cmovnl rax, rcx
or cl, bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
lea di, qword ptr [rsi + rcx + 28149]
cwde
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
sub si, 83
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
or rax, 1362710293
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
