.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub al, 26
or rdx, 11
xor rbx, 72
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
imul rbx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
add cl, -36
jmp .bb_0.3
.bb_0.3:
cmovnbe esi, eax
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
xor al, bl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
