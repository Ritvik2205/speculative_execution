.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
xor dil, dil
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
sbb ecx, 44
lea eax, qword ptr [rsi + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 42
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
movsx rbx, cx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 63
sbb rbx, 50
imul cl
sbb rdi, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
