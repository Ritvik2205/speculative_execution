.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
sbb cl, 40
sub al, 63
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
add ax, -18924
mov al, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and dl, cl
imul rsi, rcx, 72
or cl, -55
or al, al
and si, -70
cmp dl, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
