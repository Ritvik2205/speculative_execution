.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rbx, rdi
add dl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
lea bx, qword ptr [rax + rsi]
setp al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
cmovnbe rdx, rcx
lea ax, qword ptr [rax + rax]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 100
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
