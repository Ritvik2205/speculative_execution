.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
mov al, sil
cmovle edi, ebx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
xor dl, -123
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
xor dil, 37
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
sub al, bl
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sub si, si
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
add cl, -8 # instrumentation
xchg al, cl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
bts ecx, ebx
sbb bx, bx
inc dil
cmovl cx, cx
cmp rax, -1547540200
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], ax
bt edx, 17
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
mov rcx, 68
and edi, edi
adc si, -74
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], di
dec dil
adc rsi, 82
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmp esi, 123
cmovp rdx, rbx
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
test cl, -10
xor edx, 87
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
xor ecx, ecx
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
or cx, di
or bl, -35
movzx esi, dl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
