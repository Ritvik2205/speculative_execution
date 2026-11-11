.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
sbb sil, cl
movsx rcx, di
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
cmovnle dx, dx
and si, 68
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
xor dx, si
sub cl, 116
add dl, dl
cmovle edi, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
and al, -36
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 80
add al, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
test edx, 573099753
imul cl
sbb dil, bl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 20
sbb cl, 19
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
cmovs rax, rdx
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
neg dx
mov rdx, 57
and dil, al
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
adc sil, bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
cmp sil, sil
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 96
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
add dl, 41
btc cx, 240
sbb al, 32
movzx ax, al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
