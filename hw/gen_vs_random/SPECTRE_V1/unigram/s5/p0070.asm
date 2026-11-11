.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
xchg rdx, rcx
sub cl, -21
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
sbb esi, 29
neg rax
btr eax, 55
cmp si, -11
jl .bb_0.1
jmp .exit_0
.bb_0.1:
movzx ebx, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 21
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 64
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 16
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
