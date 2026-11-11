.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
xor rax, 376589024
jp .bb_0.3
jmp .exit_0
.bb_0.3:
add al, dil
cmp cl, sil
add al, -13
sub dl, 71
cmp al, sil
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
