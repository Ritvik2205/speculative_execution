.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sbb eax, -417098439
sub dx, -23
lea dx, qword ptr [rdx + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
mov bl, al
movzx eax, si
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
or cl, al
bts di, 144
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add rax, 913062684
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
sub al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
