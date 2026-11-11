.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 40
and al, cl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
sub dl, bl
lea ax, qword ptr [rsi + rcx + 57]
and dx, 22
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
cmp dil, al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 72
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
