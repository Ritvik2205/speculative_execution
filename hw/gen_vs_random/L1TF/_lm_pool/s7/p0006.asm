.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sbb dil, al
or esi, ecx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and ax, 37
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
or edi, 95
lea rsi, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
