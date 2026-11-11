.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
or rax, 1362710293
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
sub si, -105
cmp dl, -93
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
sbb sil, 19
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
