.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, di
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and cl, -19
xor edi, 56
test bl, -114
and cl, -19
or cl, sil
and cl, bl
jmp .bb_0.1
.bb_0.1:
or sil, cl
test al, -7
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
test ecx, -1843375753
test bx, 4954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
