.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dl, dil
inc cl
add bl, bl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
sub al, -82
inc esi
and ax, -22629
test al, 34
or rdi, 68
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sbb ecx, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
