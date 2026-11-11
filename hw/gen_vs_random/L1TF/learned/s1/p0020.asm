.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
xor rdi, rdi
cmovp edx, esi
and rax, 363226538
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
lea rax, qword ptr [rdx]
lea edx, qword ptr [rdi + rax + 35]
and dl, -98
sbb rsi, 86
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 83
setle cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 79
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
