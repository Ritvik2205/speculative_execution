.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 59
or di, 0b1000000000000000 # instrumentation
bsf si, di
add al, 27 # instrumentation
sbb ecx, edi
and rax, 13
movzx rax, bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 27
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
cmovs edx, edx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
sbb rax, 183833426
add cl, -42 # instrumentation
adc dl, dil
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
cmp cl, 97
movsx rsi, bl
or si, 93
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add al, 118
cmovnz edi, ebx
bt edx, ecx
btc ax, cx
adc dl, sil
xchg rsi, rdi
xor al, 102
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
or ax, -15282
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
test esi, 22
imul esi, edi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 63
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
sub rax, -701741274
add dl, sil
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, -2
cmovnp rbx, rdx
inc edx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
