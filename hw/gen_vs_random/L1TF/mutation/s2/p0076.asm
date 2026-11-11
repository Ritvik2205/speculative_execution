.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
or rax, -443578116
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
cmovnl rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
btc si, dx
lea di, qword ptr [rsi + rcx + 28149]
cwde
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
or cl, bl
sub si, 83
cmp dl, -56
jmp .bb_0.1
.bb_0.1:
add cl, 42 # instrumentation
lea esi, qword ptr [rcx + rsi]
lea ax, qword ptr [rdx + rbx + 50836]
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
add bl, bl
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
imul rdx, rdx
add cl, -103 # instrumentation
cmovnz cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
