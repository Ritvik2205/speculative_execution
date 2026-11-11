.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
test al, -126
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
sbb al, -112
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
lea eax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
lea rcx, qword ptr [rsi + rdx]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
