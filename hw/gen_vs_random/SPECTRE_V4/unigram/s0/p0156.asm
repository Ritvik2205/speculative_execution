.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ax
mov al, bl
mul cl
add cl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
mov dil, dl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
mov bl, sil
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
btr ebx, ebx
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
sub dil, -11
cmovp rax, rdi
test edi, -2098143765
xchg rax, rdx
sub bl, sil
xor rsi, -3
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and cl, cl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
mov sil, al
adc bl, al
test dil, -5
sbb esi, 36
sub eax, -1804712207
cmp dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 88
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
adc dl, 51
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
xor al, bl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
xor dl, bl
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmp dl, 23
adc rbx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
