.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
adc bl, 35
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
cmp al, -116
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdi]
cmovs ebx, esi
add rsi, rdx
add eax, 1255256879
add dl, bl
add rdi, rdi
mov dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul cx
or sil, sil
test di, si
btc esi, eax
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 5
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
imul bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 91
add cl, dl
xor al, -66
movsx ebx, bl
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test cl, -52
imul rax, rsi
add bl, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
xor cl, dil
mov al, sil
bts si, si
xchg dx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
cmovz rdi, rdx
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
xor ax, -22861
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
mov edx, -950755477
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
imul si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
