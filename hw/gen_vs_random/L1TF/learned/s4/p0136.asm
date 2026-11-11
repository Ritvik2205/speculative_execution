.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
sub al, -3
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rax + rbx + 91]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
