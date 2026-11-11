.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
lea dx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
add sil, -68
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
sbb cl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
