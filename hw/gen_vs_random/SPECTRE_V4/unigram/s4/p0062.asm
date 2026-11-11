.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 16
and dl, al
sbb cl, 45
xchg ecx, edi
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and ecx, 71
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 8
add cl, al
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
cmovnle rcx, rsi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
btc eax, 62
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
bt rdx, rbx
cmovnz rdi, rdi
adc ebx, -55
sub edi, 58
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
and bl, 76
or dl, dil
imul rax, rbx
sbb edi, 107
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
cmp rbx, -3
or bx, bx
xchg eax, ecx
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
xor rbx, rcx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
xor rsi, -3
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
imul ebx
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 25
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
sbb cl, dil
movzx bx, al
or bx, -33
cmovb rsi, rdx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 59
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
