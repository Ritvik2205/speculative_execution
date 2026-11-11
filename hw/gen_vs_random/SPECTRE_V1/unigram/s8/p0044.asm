.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rsi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and bl, 87
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
dec rax
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 78
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 75
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
