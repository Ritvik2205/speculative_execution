.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
xor dl, 83
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 77
lea rdi, qword ptr [rsi]
add dl, 92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rbx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 30
lea rax, qword ptr [rcx]
bt ebx, 41
adc rsi, 76
inc sil
or rax, -357903210
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
