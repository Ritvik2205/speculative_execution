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
cmp rbx, -66
neg rdi
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
cmovnp ebx, ecx
xor eax, eax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
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
dec sil
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
cmovno bx, dx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
xor ebx, 40
mov al, bl
or bl, -35
cmovbe rdx, rcx
mov al, 90
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
test rax, -813666773
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
add ax, 10655
movsx edi, al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
add cl, -94 # instrumentation
cmovnle rsi, rcx
adc dil, -48
neg edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
