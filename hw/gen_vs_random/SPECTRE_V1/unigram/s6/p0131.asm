.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo bx, si
lea edx, qword ptr [rdx]
add bl, 39 # instrumentation
cmovo edi, eax
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 95
sbb ebx, 3
lea si, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dl
test rax, -1638758413
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
test al, cl
adc eax, 34
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
