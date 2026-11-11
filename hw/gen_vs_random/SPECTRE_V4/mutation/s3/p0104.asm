.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
movzx edx, cx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and eax, -1572488789
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
movzx dx, dl
test bx, dx
test eax, -651442446
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or edi, -64
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
or eax, 143573881
or al, al
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
sub ax, 17434
test bl, 110
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
bt rdi, rdi
adc bl, bl
btc rcx, rdx
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
add cl, 71 # instrumentation
cmovnle rax, rcx
inc bx
or rax, rdx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
inc al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
adc bl, dl
sub rax, 120
add bl, cl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovbe ebx, esi
add cl, -9
and dil, -61
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
not rdx
cmovnz rdi, rdi
mov edx, eax
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
add al, -44
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
