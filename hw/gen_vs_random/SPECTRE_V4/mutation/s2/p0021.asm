.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -16
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
or al, sil
dec rax
neg ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
dec dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
add rax, rax
xchg rdi, rbx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and ax, -4731
xor al, 99
sbb al, 70
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
add bl, cl
cmp rax, 2096656187
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
cmovbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
sbb al, -14
cmovns ax, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
adc edx, -125
sbb eax, -141178938
and bl, bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
sub rbx, rbx
adc ecx, 114
cmovo edi, ecx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
btc rcx, rdx
or ax, 28571
dec edi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
xor cl, -101
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
cmovnle rax, rbx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
