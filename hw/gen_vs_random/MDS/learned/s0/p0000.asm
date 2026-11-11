.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 77
xor bl, -27
or eax, -696456144
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
bt ax, 76
xor ax, -4010
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
bt bx, cx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rax, -978188247
or di, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
