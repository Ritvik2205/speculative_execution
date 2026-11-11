.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], eax
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 26
and cl, 126
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
btc eax, 62
xor dx, -43
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
or cx, -74
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
movsx rax, dl
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
sbb cx, cx
movzx ebx, dil
cmovl cx, ax
bt di, dx
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdi
add dl, -82
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ebx
test dl, bl
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
movzx rdi, dx
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
cmovb si, bx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 71
btc rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
bt ebx, 4
bt ecx, edi
add dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
add bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
test sil, 1
movsx di, dl
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
imul bl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
