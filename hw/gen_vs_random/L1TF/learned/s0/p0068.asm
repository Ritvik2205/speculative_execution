.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and al, -68
jmp .bb_0.1
.bb_0.1:
test sil, 29
cmp al, 27
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea ax, qword ptr [rcx + rsi]
jmp .bb_0.2
.bb_0.2:
sbb cl, -11
xor sil, dl
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
