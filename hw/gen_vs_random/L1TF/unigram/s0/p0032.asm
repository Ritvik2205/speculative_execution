.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, dx
and rsi, 62
cmovnz rdx, rdi
cmovnz edx, eax
or dil, -113
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
imul rbx
add cl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], -54
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
sbb dil, al
not cx
test rdx, 1
btc bx, ax
add al, -1 # instrumentation
nop
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
