.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor rax, 620504108
add al, al
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
lea cx, qword ptr [rax + rdx]
test dl, -36
and ax, 25351
sbb dl, 127
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
