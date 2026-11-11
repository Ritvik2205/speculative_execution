.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb edi, esi
cmovno ax, di
lea cx, qword ptr [rax + rdx + 75]
and al, -54
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 15
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
cmp dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
