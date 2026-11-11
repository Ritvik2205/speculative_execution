.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rcx
cmovz rsi, rdx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
bswap eax
adc rsi, 3
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 53
lea ecx, qword ptr [rbx + rcx + 63]
btc dx, si
and dx, 1
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
add dl, 47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
