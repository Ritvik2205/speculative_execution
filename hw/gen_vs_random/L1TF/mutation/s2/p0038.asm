.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdi + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
setle dl
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
sub rax, 1715032616
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
or bx, 90
bt si, cx
lea eax, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
lea rsi, qword ptr [rax + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
bt ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
