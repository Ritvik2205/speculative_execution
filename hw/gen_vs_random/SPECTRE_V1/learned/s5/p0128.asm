.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
add al, 3
bt ecx, esi
setb dl
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
sub al, sil
test dl, -7
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
