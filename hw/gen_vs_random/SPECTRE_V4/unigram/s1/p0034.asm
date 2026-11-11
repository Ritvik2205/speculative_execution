.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or esi, 32
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
add dl, -91 # instrumentation
cmovl rax, rax
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
adc rcx, -99
and ebx, -4
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
add al, -74 # instrumentation
cmovnp rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
movzx ebx, dl
adc cx, dx
adc edi, -83
and rdi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdi]
cmp dl, 23
btc rbx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
cmovnl bx, bx
add rbx, rcx
xor di, 85
xchg ecx, ebx
and al, cl
cmovnle si, ax
cmovs bx, cx
add al, -55
movzx eax, cl
movzx ax, al
mov al, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
add al, -86 # instrumentation
cmovnp esi, edx
or dl, -26
add al, 17 # instrumentation
cmovnle esi, edx
add sil, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
movzx edx, al
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
sub sil, dl
cmovl di, cx
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
cmovnl rsi, rax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
cmp bl, -79
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
