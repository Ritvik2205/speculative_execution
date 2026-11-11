.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
sbb al, 92
setb cl
and rbx, rdx
and rax, 1994547909
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 92
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
sbb sil, al
jmp .bb_0.2
.bb_0.2:
test al, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
