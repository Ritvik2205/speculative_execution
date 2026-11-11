.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rcx + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
cmp rax, rbx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 81
or di, 79
cmovl rsi, rsi
lea rax, qword ptr [rcx]
and cl, 63
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
xor cl, 92
cmovnbe si, si
sbb rcx, 42
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
test al, sil
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
