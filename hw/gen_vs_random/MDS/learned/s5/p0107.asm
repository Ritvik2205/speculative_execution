.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and al, bl
test al, -7
bt ebx, esi
jmp .bb_0.1
.bb_0.1:
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
xor sil, -15
btr si, ax
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
btr ecx, eax
and ax, 31082
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
xor al, -19
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
