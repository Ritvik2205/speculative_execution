.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -5
jmp .bb_0.1
.bb_0.1:
test bl, 12
cmp rbx, 63
xor cl, dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 84
adc bl, sil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
btr ax, si
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
