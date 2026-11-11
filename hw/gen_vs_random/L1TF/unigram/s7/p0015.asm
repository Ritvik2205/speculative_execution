.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts dx, 79
lea rdi, qword ptr [rsi + rax + 41973]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
add bl, -9 # instrumentation
adc rdx, 37
cmovl rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
inc ebx
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
