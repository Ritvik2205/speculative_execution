.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -55 # instrumentation
cmovnbe esi, edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or al, 27
bts bx, 42
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
mov edx, esi
adc rcx, -99
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
mul ax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
bt edi, 135
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
mov rbx, rdx
mul cl
sbb eax, 426996540
dec rdx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
adc bl, bl
btc rcx, rdx
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
add cl, 71 # instrumentation
cmovnle rax, rcx
inc bx
or rax, rdx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
inc al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
adc bl, dl
sub rax, 2016976449
add bl, cl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovbe ebx, esi
add cl, -62
and dil, -23
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
not rdx
cmovnz rdi, rdi
mov edx, eax
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
add al, -6
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
