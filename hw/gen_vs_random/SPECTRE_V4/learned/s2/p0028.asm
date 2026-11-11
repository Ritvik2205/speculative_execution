.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -227205962
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
neg dil
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
xchg rdx, rbx
sbb cl, dl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
xchg rcx, rbx
cmovns edx, esi
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or dl, dil
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
adc al, 69
sub rsi, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
