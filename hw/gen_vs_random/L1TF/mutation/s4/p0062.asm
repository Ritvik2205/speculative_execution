.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
or bx, 90
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
lea ecx, qword ptr [rdi + rax]
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
bt si, cx
lea rsi, qword ptr [rax + rdi]
bt ebx, edi
setle dl
lea eax, qword ptr [rdi + rbx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
sub rax, 57846954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
