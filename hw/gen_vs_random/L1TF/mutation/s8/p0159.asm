.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, -1628299544
bt ebx, edi
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
or bx, 90
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
lea ecx, qword ptr [rdi + rax]
setle dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
bt si, cx
lea rsi, qword ptr [rax + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
lea eax, qword ptr [rdi + rbx]
jmp .bb_0.1
.bb_0.1:
add bl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
or bl, bl
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
bt rdi, 18
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
