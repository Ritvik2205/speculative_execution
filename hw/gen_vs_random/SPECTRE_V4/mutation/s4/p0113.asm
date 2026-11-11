.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
adc bl, bl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
sbb al, 70
test eax, 1947430392
and eax, -2001076187
sub ax, 25338
bt rdi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
not bx
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
add dl, dl
sbb esi, ecx
test bl, 87
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
sub rcx, -74
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
imul si, di, -97
imul cx, dx, 98
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
or eax, -863161215
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
movzx edx, cx
cmovl rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
test bx, dx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
btc rdx, 178
cmovnb esi, ebx
or edi, -78
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and bl, -119
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and ecx, edx
movzx dx, dl
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
