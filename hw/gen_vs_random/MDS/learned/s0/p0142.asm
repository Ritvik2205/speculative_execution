.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor al, 115
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 89
xor dl, -43
or sil, cl
and edi, 23
jmp .bb_0.1
.bb_0.1:
and al, 82
xor sil, 94
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
or rax, -141551502
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test al, 127
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
