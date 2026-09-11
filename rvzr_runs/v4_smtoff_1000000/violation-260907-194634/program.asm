.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -119 
sbb rax, 1518549445 
imul edx 
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx] 
movzx di, dl 
cmp rbx, -91 
neg rdi 
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi] 
cmovnp ebx, ecx 
xor eax, eax 
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12 
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi] 
bt si, ax 
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx] 
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202 
mov bl, al 
neg di 
cmovnb ebx, edx 
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0 
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx] 
cmovns di, ax 
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx] 
btc rcx, rdx 
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx] 
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1 
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
sub rax, 2016976449 
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
add al, -99 
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
