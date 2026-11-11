.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
lea rax, qword ptr [rdx + rdx + 27]
sbb cl, dl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, dil
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
sbb bl, dl
test al, 34
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
movzx ax, sil
sbb sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
