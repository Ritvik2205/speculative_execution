.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
sub dil, 87
cmovno rsi, rdx
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
mov dl, -36
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
xor dl, sil
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
btr edi, ebx
lea edx, qword ptr [rax + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
