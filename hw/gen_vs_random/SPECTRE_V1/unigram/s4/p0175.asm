.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, rcx
add al, -72
add bl, -43 # instrumentation
adc cx, 64
add cl, cl
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
setnb bl
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
add dx, ax
add cl, 72 # instrumentation
cmovnl ax, cx
sets sil
xor ebx, 30
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
