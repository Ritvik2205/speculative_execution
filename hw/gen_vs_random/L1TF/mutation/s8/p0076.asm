.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
setle dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
lea rsi, qword ptr [rax + rdi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
bt ebx, edi
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
sub rax, -1628299544
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
lea ecx, qword ptr [rdi + rax]
or bx, 90
lea eax, qword ptr [rdi + rbx]
bt si, cx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
