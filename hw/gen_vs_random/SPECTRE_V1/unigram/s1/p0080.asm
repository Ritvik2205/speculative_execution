.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
setnb al
xor bx, ax
cmp dl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
setnz sil
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
xchg edx, ebx
add cl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
mul rdi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
sub cx, si
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
add dil, 90 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
