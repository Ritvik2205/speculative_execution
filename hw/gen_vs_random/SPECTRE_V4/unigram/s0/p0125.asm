.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 18
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
cmovp ax, dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
not dx
cmovno edi, edx
adc edi, 71
adc ebx, 117
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
test dl, 19
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and dil, 96
and bl, 26
cmovnle edx, eax
add sil, sil
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
btc rcx, rsi
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
movsx edx, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
sub rdi, 16
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
cmovnz ebx, esi
sub bl, al
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
btc dx, di
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
mov edx, 52
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 19
xchg rax, rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
or cl, 65
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
btc rax, rdx
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
not esi
cmovnbe rax, rbx
add bl, -71 # instrumentation
adc bl, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
sbb eax, 4
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sbb bl, 57
sbb al, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
