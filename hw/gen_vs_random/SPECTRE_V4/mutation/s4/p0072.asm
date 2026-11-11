.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 126 # instrumentation
cmovb esi, ecx
add al, -3
inc rax
sbb dl, -106
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
cmovbe dx, si
neg cl
adc ebx, -55
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
add al, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -120
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
cmp edx, -95
adc ax, -22258
dec di
movsx rsi, si
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmovb rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
sub rcx, -99
adc dl, al
or rsi, rsi
cmovz edi, esi
and al, dl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
xor rax, -111081832
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xchg dx, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
btc rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
mov rdi, -7956777892145474940
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovns rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
