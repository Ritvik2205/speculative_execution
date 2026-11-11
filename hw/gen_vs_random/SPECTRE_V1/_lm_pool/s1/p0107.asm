.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb dil, -93
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
test rbx, 65
xor bl, sil
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
sub al, 63
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
