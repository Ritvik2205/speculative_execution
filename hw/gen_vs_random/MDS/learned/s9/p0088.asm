.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
xor sil, -46
and cl, al
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
test al, bl
or rax, -141551502
and al, 87
or ax, 30524
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
or rcx, -17
or cl, -36
xor cl, 98
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
or rbx, -72
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
