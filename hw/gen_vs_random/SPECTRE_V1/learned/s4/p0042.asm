.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
xchg al, al
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
cmovl rsi, rsi
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 79
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
mov al, al
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 4
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 10
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 98
xor ax, -2537
cmovs dx, ax
test eax, 62
bt si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
