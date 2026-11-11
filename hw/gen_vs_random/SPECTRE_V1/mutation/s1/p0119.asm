.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rbx, si
or esi, -74
setnp dl
mov cl, al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add cl, -93 # instrumentation
not rdx
lea cx, qword ptr [rax + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
sbb al, -112
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
sub dl, -12
inc bl
lea ax, qword ptr [rdx + rax + 36518]
test cl, -24
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
