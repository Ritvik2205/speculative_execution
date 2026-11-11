.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -78
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 85
setp dl
dec ebx
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 73
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
cmp rbx, 47
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
cmp dil, sil
movzx ecx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
