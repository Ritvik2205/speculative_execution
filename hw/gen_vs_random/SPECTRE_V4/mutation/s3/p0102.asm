.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, dx
or edi, -78
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
not bx
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
movzx edx, cx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and eax, -1948401947
sbb al, -52
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
imul si, di, -97
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
test eax, 1947430392
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and bl, -60
or eax, -1213318393
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
or al, al
add dl, dl
add dl, 92 # instrumentation
cmovnl rdi, rsi
bt rdi, rdi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
cmovnb esi, ebx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
test bl, -116
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
btc rdx, 130
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
cmovl rbx, rsi
imul cx, dx, 98
adc bl, bl
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
sbb esi, ecx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
sub ax, 25338
sub rcx, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
