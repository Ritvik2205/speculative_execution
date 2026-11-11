.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, di
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
sub dil, dl
cmp cl, dil
jmp .bb_0.1
.bb_0.1:
test cl, -33
and dil, dil
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
or cl, -62
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
and bl, -65
jmp .bb_0.4
.bb_0.4:
xchg dl, al
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
