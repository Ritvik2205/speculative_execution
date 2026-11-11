.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rax, rcx
sub si, -105
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
btc si, dx
or cl, bl
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
cwde
or rax, -443578116
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
lea di, qword ptr [rsi + rcx + 28149]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
cmp dl, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
