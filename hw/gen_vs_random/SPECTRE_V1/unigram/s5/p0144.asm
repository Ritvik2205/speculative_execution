.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
lea dx, qword ptr [rsi + rcx]
sbb dl, 127
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
add al, 19 # instrumentation
setnz sil
setns dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 80
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
mov bx, 27
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
cmovo dx, ax
and dil, bl
setns dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
