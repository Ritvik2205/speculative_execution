.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
lea rsi, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
cmovb edx, edx
movzx ebx, si
add bl, bl
bt esi, 72
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
sub ax, -12040
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
xor cl, 87
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
add cl, dil
xor cl, 27
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
