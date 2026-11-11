.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
sbb di, cx
mov ecx, -405458789
or ax, -13633
test ebx, edi
test dx, 28394
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
bt si, 18
and rdi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdi]
btc rbx, 52
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
and dl, sil
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
btc rbx, rax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
add cl, sil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
test eax, 1947430392
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
xor al, dl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
or dl, 71
movsx dx, al
cmp cl, al
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and eax, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovs cx, bx
cmovl bx, si
cmovp rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
add esi, eax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], ax
cmovb rdx, rbx
add dl, sil
cmovbe ebx, ebx
adc sil, -112
or dil, -16
inc dil
imul rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
