.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 90
and al, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmovnb esi, ebx
add al, 111 # instrumentation
cmovno ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
or rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 32
not rcx
and dil, al
add al, 23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 84
add cl, al
adc sil, -2
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
mul bl
add ax, ax
bt esi, 41
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 32
sbb al, 54
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
cmovl rdi, rbx
add al, sil
cmovnp edi, ecx
cmp edi, edx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
inc rax
adc si, di
or bl, bl
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 45
xor al, al
sub sil, sil
cmovnbe si, cx
mul ax
mov edx, -950755477
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
bswap ecx
cmovp rax, rsi
add ax, 17333
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
test sil, -119
mov ecx, edi
add rsi, 44
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
