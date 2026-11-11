.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and ax, 7954
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
dec al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rbx]
sub sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
