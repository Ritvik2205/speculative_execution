.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -5
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
bts ecx, 225
and rdx, 88
adc sil, al
or dil, -113
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
xor rbx, 30
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
