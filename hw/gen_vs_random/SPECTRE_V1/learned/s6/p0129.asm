.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
imul dl
test bl, bl
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
xchg rax, rsi
or al, 100
and bl, -65
xchg rax, rcx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
sbb bl, 79
btr edx, ecx
lea cx, qword ptr [rdx]
sub sil, -18
lea rsi, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
