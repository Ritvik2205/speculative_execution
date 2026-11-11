.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add al, -44
and al, dil
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
add dl, bl
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
