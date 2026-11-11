.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
add bl, 36 # instrumentation
setnl cl
setnz bl
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and di, ax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 53
add ebx, 67
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
add dil, 56 # instrumentation
cmovns ecx, edi
lea rbx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
