.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
adc al, cl
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 28 # instrumentation
setnz al
or rax, -357903210
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
xor al, -64
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
movsx dx, dil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
test eax, 3
jmp .bb_0.2
.bb_0.2:
bt bx, 27
sbb eax, eax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
