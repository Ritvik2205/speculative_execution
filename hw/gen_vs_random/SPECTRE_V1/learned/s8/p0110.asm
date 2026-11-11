.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
imul al
lea ebx, qword ptr [rdx + rdx + 46587]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cx, -103
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
mov bl, sil
test al, 84
adc al, -82
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
lea rdx, qword ptr [rbx]
inc bl
sub al, sil
cmovnp ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
