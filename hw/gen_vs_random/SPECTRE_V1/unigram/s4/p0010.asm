.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, al
lea esi, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
lea ecx, qword ptr [rdi]
and bx, -118
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
inc bx
add dl, -11 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
cmovno di, si
sbb sil, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
setbe bl
cmovo rbx, rbx
add bl, 57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
cmovnp cx, ax
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
