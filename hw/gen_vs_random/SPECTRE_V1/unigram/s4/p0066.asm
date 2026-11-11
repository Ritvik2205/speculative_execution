.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, 88
xchg dil, bl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe si, ax
add ebx, -116
mul dil
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
sbb eax, 1830317432
mov cl, -72
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
xchg eax, edx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
add al, -14 # instrumentation
lea bx, qword ptr [rax + rdi]
bts ax, 28
sub bl, bl
sbb ebx, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
