.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc esi
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 88
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
inc ebx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rdx
xor dil, sil
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
sbb dl, dil
cmp al, bl
setz al
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
