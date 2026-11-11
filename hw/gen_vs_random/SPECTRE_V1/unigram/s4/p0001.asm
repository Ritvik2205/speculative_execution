.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rdx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
sbb dl, -23
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
mov bl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
sets al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 72
test dil, -107
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rcx
xchg eax, ebx
lea ebx, qword ptr [rax]
add cl, 97 # instrumentation
adc bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
