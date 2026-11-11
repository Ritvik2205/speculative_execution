.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cx, cx
cmovb rax, rcx
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rbx
sbb cx, dx
add al, 17 # instrumentation
cmovnle ebx, ecx
test dil, 64
btr rdx, 35
bt eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
cmp bl, bl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
or edi, -64
sbb al, 102
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and bl, bl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
add dl, -91 # instrumentation
cmovl rbx, rdx
xor rsi, -3
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
movzx esi, di
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdx]
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
xor si, -73
imul dx
add al, al
btc rdx, 130
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
cmovb rbx, rbx
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
xor dl, -66
mul bl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
cmovnle di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
