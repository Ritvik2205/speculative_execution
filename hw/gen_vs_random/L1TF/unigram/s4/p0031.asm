.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
not rcx
cmovz rsi, rdx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
bswap eax
adc rsi, 25
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 92
lea ecx, qword ptr [rbx + rcx + 83]
btc dx, si
and dx, 33
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
