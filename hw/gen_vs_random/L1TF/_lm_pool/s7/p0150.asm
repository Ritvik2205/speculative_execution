.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], 65
sub cx, 99
add al, al
not sil
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and bl, bl
sbb al, bl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
mov bl, sil
sbb eax, -1165635662
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
