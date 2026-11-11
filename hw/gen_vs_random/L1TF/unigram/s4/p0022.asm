.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
setnp sil
sbb rcx, 42
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
inc eax
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 71
jmp .bb_0.1
.bb_0.1:
add al, 31
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
sbb dil, 44
adc ebx, ecx
cmovno dx, dx
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
mov sil, cl
btc bx, 168
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
