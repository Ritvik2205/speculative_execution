.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, 27
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
btc ebx, 149
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and dl, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
and bl, -99 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
