.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 20
mov sil, dl
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
sbb dl, -71
cmovp esi, ecx
sub eax, -638345541
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and cl, -118
and dil, -120
btr rcx, rax
test ebx, 30
adc rsi, 82
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
sub cl, al
imul eax, esi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
mov eax, -1056201206
cmovl rcx, rbx
add dl, bl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
bt rax, rax
dec dl
cmp al, 109
add dl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
bt rax, 59
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
add bl, 54
btr dx, 245
adc cl, 31
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
bts ecx, 0
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
xor al, 106
or rsi, rsi
and ebx, -4
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
mov dil, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
