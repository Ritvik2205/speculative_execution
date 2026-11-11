.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, -20370
cmovnb si, dx
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
sbb bl, al
or cl, dl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
lea di, qword ptr [rsi + rax + 38960]
xor ax, -27503
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and bl, 125
bts bx, ax
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
