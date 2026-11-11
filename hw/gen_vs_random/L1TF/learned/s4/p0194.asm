.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -5
test cl, 4
or bl, -5
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt rdi, 18
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
adc sil, 6
add bl, dil
xor bl, dil
sbb dl, -26
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
