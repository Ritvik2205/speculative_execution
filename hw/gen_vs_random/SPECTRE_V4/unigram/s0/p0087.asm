.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
sbb rdi, 23
sbb al, -4
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
cmp cl, 49
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
test rdx, rcx
cmovb rax, rdx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
mul rcx
btc rax, 227
add cl, -8 # instrumentation
xchg al, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 49
sub rdi, rcx
xor bl, 27
sbb bl, 121
mov eax, ecx
adc dl, dil
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
add bl, cl
cmp cl, al
cmp bl, dl
sub al, 29
add cl, -96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
xchg cl, bl
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
add cl, 68 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
cmp dil, sil
and ebx, -122
sub dx, -12
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
add al, 27 # instrumentation
mov cl, bl
cmp di, -8
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
cmovno rax, rbx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
btc rdi, rbx
mov dx, 22195
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
