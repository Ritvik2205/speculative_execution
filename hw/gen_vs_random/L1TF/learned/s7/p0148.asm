.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
sub cl, -49
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 21
jmp .bb_0.1
.bb_0.1:
imul rbx
jmp .bb_0.2
.bb_0.2:
cmp dx, 24
sbb bl, sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
add dil, 88
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
test dx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
