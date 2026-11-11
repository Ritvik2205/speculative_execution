.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
add dl, dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
test bx, dx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
test bl, -116
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
imul cx, dx, 98
and bl, -30
or al, al
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
bt rdi, rdi
or eax, -1213318393
adc bl, bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
movzx edx, cx
and eax, -1572488789
test eax, 1600638830
sbb al, -14
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
sub ax, -1908
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
cmovnb esi, ebx
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
movzx dx, dl
cmovl rbx, rsi
not bx
sub rcx, -74
or edi, -78
sbb esi, ecx
btc rdx, 130
and ecx, edx
imul si, di, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
