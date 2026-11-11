.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or rcx, 13
cmovbe eax, edi
cmovbe edx, edi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edx
and sil, 37
lea rsi, qword ptr [rax + rcx + 48]
and al, al
sbb dl, sil
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
