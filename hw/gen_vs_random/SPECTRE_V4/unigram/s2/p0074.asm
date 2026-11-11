.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdi, 93
cmovs ecx, ebx
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
imul ecx, edx, 8
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
movzx ax, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmp esi, 123
and rcx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
test esi, -222751961
and edi, eax
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
movzx edi, bl
and dil, sil
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
movzx rax, dx
sub eax, 1050143384
cmovb ebx, ecx
or al, al
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], esi
cmp rax, rdi
and al, -118
mov al, al
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
test cl, -10
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
imul eax, esi
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
cmovnle rdi, rdx
test rax, -813666773
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdx], si
mov al, sil
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
imul dl
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
add al, 17 # instrumentation
cmovnle ecx, eax
cmovz rdi, rbx
or al, dil
add cl, -62
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
btr rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
