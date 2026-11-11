.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
add rsi, 97
test ecx, 77
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
and al, -111
sbb bx, dx
lea ecx, qword ptr [rdi + rsi]
lea bx, qword ptr [rcx]
test edx, 73
lea edi, qword ptr [rcx + rbx]
cmp eax, 912798305
xor cl, cl
adc sil, 65
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 75
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and dl, cl
cmovno ebx, esi
bt rdx, 88
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test al, bl
imul si, bx, 32
sbb cl, dl
adc al, -3
cmovnz edx, eax
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
adc al, -3
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 11
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
sbb sil, 12
mov rdx, rbx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and si, 27
xchg bl, cl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 28
xor ax, -27503
cmovnbe dx, cx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
