.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
btc ax, dx
xor di, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 53
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 71
btr edx, esi
jmp .bb_0.1
.bb_0.1:
and bx, di
btc rbx, 31
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rdx, 40
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 29
and bl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
