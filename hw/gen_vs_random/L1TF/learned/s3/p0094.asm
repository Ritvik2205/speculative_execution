.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and ax, 37
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
jmp .bb_0.3
.bb_0.3:
sub bl, al
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
