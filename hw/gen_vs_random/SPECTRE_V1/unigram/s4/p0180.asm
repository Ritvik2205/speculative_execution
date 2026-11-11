.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
movsx rdi, dx
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
sets cl
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
add cl, -127
sbb bl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
lea ax, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
or cl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
