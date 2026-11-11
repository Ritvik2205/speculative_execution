.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
or rdi, 51
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 95
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
lea eax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
or al, dl
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
