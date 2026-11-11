.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
add al, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], eax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
add cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
sbb si, 92
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
or bx, -33
and edi, -102
sbb al, cl
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
test al, al
xchg edx, eax
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
sub sil, -35
not ecx
btc cx, 32
xor edi, 127
imul eax
adc dx, ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 53
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 90
add bl, -24 # instrumentation
cmovnbe dx, dx
or al, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 93
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and sil, cl
cmovz rsi, rcx
cmp rcx, -121
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
xor si, ax
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
or sil, bl
btc esi, 63
btc rsi, rdx
adc al, -70
xor dl, sil
adc edi, -83
xor cl, -15
cmovnb bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
