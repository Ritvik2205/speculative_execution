.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 41
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
test dl, al
and rax, 14
cmovnp rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xchg rdi, rbx
sbb dl, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 42
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 11
or si, 0b1000000000000000 # instrumentation
bsf di, si
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
movzx ebx, bl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sbb eax, 4
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 100
cmp al, 81
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
or si, 13
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
sbb dl, dl
test bl, cl
cmp bl, cl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovb di, di
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor cl, -101
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
lea edx, qword ptr [rsi + rbx + 37]
bts edi, 167
or si, dx
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
sbb cl, sil
xchg bl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
cmp al, -23
xor esi, eax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
