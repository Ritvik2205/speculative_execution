.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
cmp dl, -82
sbb sil, bl
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
movzx rax, dl
sub dx, -12
bts cx, 135
xor rax, 1049851782
not ax
cmovl si, di
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ecx
xchg bl, dl
cmp eax, -813838876
or rdx, 1
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], 27
imul rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
mov bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
add dl, -4 # instrumentation
cmovp cx, bx
cmp cl, -105
or rdi, -41
mov cl, dl
xor bl, sil
cmovs rdi, rsi
or bl, bl
bts rdx, 60
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
btc rsi, 77
sbb al, bl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
adc cl, dl
test bl, dl
xor ebx, -62
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
test cl, 78
cmovb rax, rdi
test ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
