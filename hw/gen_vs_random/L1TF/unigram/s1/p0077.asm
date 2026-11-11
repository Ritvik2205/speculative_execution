.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
sub dl, cl
sbb sil, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 83
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
cmovl edx, esi
sub bl, -96
xchg cl, bl
movsx edx, bl
sub dl, -49
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
lea rdi, qword ptr [rax + rdx]
and rax, 1163013815
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
