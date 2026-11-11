.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt edi, esi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
or al, -48
sub al, -47
sbb cl, -11
jmp .bb_0.3
.bb_0.3:
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
