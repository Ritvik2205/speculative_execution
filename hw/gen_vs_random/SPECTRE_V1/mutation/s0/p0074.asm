.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, 100
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
mov bl, al
movzx eax, si
lea dx, qword ptr [rdx + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
bts di, 144
or cl, al
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
sub dx, -23
jo .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, al
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
add rax, -704585563
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
