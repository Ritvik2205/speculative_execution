.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, 55
sub sil, -50
add al, al
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
cmovz ecx, edx
cmovs ax, ax
mov rcx, rax
add dl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
sub cl, 116
movzx esi, al
movzx ax, bl
sbb bl, -94
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
add dx, -90
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
add si, 4
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
cmovle dx, ax
imul dl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
add si, 4
adc cl, dil
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
mul esi
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
cmp si, 23
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmovnl rsi, rsi
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
btc si, di
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
sub bl, bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
xor al, 102
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub dil, dil
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 40
cmovnp bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
