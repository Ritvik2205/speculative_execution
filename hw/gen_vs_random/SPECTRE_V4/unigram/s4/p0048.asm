.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 38
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
xchg edx, ecx
mov rsi, 4368505613814921305
and rax, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rax]
cmp sil, sil
and dl, cl
xor rax, 944027678
and rsi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
sub sil, sil
and cl, sil
cmovnp rsi, rax
cmovbe dx, si
bt rcx, 189
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
cmovle rdx, rdx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
cmovno edi, ebx
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
cmovnle ecx, eax
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 68
cmovp si, bx
sbb al, 57
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
cmp edx, ebx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
not cl
xor rax, rdi
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
bt edx, 14
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], si
sub dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
