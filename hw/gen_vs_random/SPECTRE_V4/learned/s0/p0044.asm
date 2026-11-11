.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and ax, 35
test rsi, 35
sub al, 98
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
add cl, 106 # instrumentation
cmovnp rax, rdx
xor dx, di
cmovnl rdx, rdx
xchg rcx, rdx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
sbb cl, al
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
add bl, sil
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
bts esi, 241
and al, -127
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
