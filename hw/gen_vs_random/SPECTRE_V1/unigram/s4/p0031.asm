.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 56
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 92
setnz cl
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
dec sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
sbb al, al
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
test dil, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
