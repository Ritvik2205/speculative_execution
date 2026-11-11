.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -544019457
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
add dl, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmp al, 114
cmovnle cx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 46
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test rdi, -1876639003
cmp dx, si
xor dl, 72
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
movzx ecx, bl
add eax, edx
sbb cl, -104
bt esi, 227
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 96
cmovnz eax, esi
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
cmovnl rbx, rsi
cmovnl rbx, rsi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmovb edx, eax
movsx rsi, di
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
cmovb edx, edx
sub ecx, eax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
or sil, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
