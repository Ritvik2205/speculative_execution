.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cdq
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sbb bl, dl
and eax, 933895314
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
sbb dl, dl
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
cmovno ax, di
add si, 41
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
