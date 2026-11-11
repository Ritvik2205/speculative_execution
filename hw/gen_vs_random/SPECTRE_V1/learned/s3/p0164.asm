.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 88
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and bl, cl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
cmp al, 53
sub dl, dil
sub dl, cl
sbb rdi, 3
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
