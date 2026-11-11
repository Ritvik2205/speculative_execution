.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax, eax, 43
neg edx
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
btr rbx, rcx
btc rsi, rax
cmovnbe cx, ax
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
bts esi, 92
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
test esi, edx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
