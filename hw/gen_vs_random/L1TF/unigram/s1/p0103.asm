.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -125
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rbx]
add bl, -52 # instrumentation
not ebx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
cmovnle ax, ax
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
movzx eax, cx
sub eax, 85
adc bl, bl
setp bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
