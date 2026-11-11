.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp ax, si
cmovnb esi, edx
test dl, bl
sbb bl, dl
cmovs dx, di
neg al
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
adc dil, 76
cmovle edx, ecx
bt eax, 84
cmp dl, 84
btc cx, bx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
xor cl, dl
cmp al, 81
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, edx
and dx, 1
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
adc al, 36
cmovnp si, dx
adc al, dl
mov rbx, 9101099553822202722
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
cmp ax, -15409
and rsi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rsi]
cmovnp rsi, rsi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 32
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
or si, dx
cmovnl rbx, rcx
or al, -71
xchg bl, cl
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
not si
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
