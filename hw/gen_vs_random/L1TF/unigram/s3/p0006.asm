.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
lea ax, qword ptr [rcx]
mul al
or ax, -18131
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 25
jmp .bb_0.1
.bb_0.1:
sub ecx, ecx
lea bx, qword ptr [rsi + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 36
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and cl, 43
setp al
lea bx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
