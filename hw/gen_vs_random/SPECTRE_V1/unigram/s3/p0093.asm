.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 40
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
mov rsi, rdx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
add bl, -41 # instrumentation
xchg dl, dil
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
adc cl, -18
bts rbx, 140
adc al, 52
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 48
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
