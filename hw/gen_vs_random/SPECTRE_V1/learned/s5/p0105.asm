.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
lea rbx, qword ptr [rax + rax]
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
xor bl, -38
and ecx, -38
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
btc bx, di
js .bb_0.3
jmp .exit_0
.bb_0.3:
test sil, 47
and dl, -109
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
