.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 19
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sbb dil, dl
or al, -2
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
not sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
test rax, rbx
sub rdx, 10
and ax, 7954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
