.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
sbb al, -4
or bl, sil
sub al, -97
test al, -56
and dl, bl
add al, -80
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 9
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
