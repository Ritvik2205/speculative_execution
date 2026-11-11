.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 40
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
or eax, -1641258390
btr rax, 95
test bl, -8
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
adc dl, -49
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
