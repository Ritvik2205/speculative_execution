.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
sbb bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
xchg al, cl
jmp .bb_0.1
.bb_0.1:
xchg al, bl
jmp .bb_0.2
.bb_0.2:
cmp bx, 51
lea rdx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
