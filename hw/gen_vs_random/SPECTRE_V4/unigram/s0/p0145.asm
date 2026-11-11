.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 121 # instrumentation
movsx edx, bx
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
cmp bl, -16
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
or dil, -16
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
add al, -63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
btc dx, 61
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
bt eax, esi
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 25
add sil, al
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
sub dil, al
or bl, dil
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
cmp bl, cl
mov bl, al
add bl, -59
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
or rcx, 1
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
neg rax
xor cl, sil
btc rcx, rax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 86
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 82
btc rdi, rdx
sub cl, dl
cmovp rax, rcx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 30
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
cmovp ecx, edi
sub dil, -28
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
or rdx, 1
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
