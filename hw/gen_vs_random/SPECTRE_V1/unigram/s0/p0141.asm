.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sbb cl, 105
imul rax, rcx
bswap rcx
add dl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
xchg dl, bl
btc si, 71
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 6
neg edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
