.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, -1
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
or rcx, 41
sub al, dl
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
xor al, dl
add ecx, 99
btr dx, dx
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
btr rbx, 52
bts edi, 75
and rdx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdx]
test al, sil
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
test dl, 114
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
cmovnp ecx, ecx
cmp dl, cl
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
cmovp rdx, rax
bt si, di
add bl, -43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
neg edi
add dl, 59 # instrumentation
cmovno rsi, rax
and cl, al
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
and sil, -84
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
test rdi, 1222000858
movzx di, cl
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
or rbx, 69
sbb cl, sil
movsx edx, al
and eax, -1572488789
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
cmovno edx, edi
add dl, -55 # instrumentation
cmovnbe eax, esi
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
