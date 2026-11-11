.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
mov al, sil
lea eax, qword ptr [rdx]
sub al, -97
test dil, -126
jmp .bb_0.1
.bb_0.1:
add dl, -1
setno sil
mov dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
