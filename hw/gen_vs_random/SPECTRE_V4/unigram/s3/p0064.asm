.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg cl
add al, 122 # instrumentation
cmovns esi, edx
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
xchg di, cx
cmovs ebx, ecx
sub bl, sil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
cmovz si, si
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
sub cx, 50
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
cmovp dx, cx
mov bx, -31043
and al, -127
xor sil, 56
mov al, 20
test bx, -1599
imul eax
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
sbb bl, 57
test cl, dl
test sil, dl
sbb rdx, 33
sbb dl, al
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 16
add cl, 85
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
or al, dil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
cmovo rax, rdi
and cl, dl
adc dl, sil
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
xor eax, ecx
test al, dl
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
test dl, bl
sub bl, 17
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
or dil, sil
cmp al, 70
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
