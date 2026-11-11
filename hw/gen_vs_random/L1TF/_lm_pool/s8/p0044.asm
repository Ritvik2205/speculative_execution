.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor ax, 34
and ax, 37
test sil, bl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
sbb bl, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 17
jmp .bb_0.3
.bb_0.3:
cmp bx, -21
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
