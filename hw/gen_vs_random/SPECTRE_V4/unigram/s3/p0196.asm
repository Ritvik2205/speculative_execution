.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 43
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
or rax, 185991441
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
or rax, rdi
cmovl ax, cx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
add dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 12
adc dil, dil
imul sil
sub esi, edx
mov bl, al
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
imul ax, di, 101
dec sil
mul cl
cmp al, 105
and dl, cl
and rdx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdx]
and dl, sil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
bt cx, 31
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
xchg edx, edi
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
or al, -47
cmovno rdx, rcx
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
cmovl ax, dx
adc dl, dl
mov esi, 1695134926
btc ax, bx
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
cmovnle ax, cx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
not rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
