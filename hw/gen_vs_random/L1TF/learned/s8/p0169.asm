.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
setnle bl
xor bx, 62
sub al, -75
and sil, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
test bl, 12
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
