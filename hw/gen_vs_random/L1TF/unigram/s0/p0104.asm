.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
sbb edx, 73
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 91
jmp .bb_0.1
.bb_0.1:
add bl, -4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
setnle al
dec cl
xchg eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
add rax, -1969014465
bt rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
