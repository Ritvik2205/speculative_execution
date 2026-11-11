.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rdi
and al, -68
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
add sil, dl
jmp .bb_0.1
.bb_0.1:
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add eax, 871834813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
