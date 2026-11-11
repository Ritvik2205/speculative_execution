.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -51 # instrumentation
cmovl edi, edx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
bt edi, 134
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
and eax, 933895314
adc al, dl
not ecx
lea rcx, qword ptr [rbx + rcx + 45597]
not cx
add dx, -90
or rax, -1571963467
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
