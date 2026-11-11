.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, -99
adc bl, bl
test bx, dx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
or edi, -64
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
bt rdi, rdi
test bl, 87
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
cmovl rbx, rsi
imul cx, dx, 98
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
not bx
and eax, -1948401947
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
movzx dx, dl
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
or eax, -1213318393
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
sub ax, 24426
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
or al, al
imul si, di, -97
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
btc rdx, 130
sbb al, 95
sbb esi, ecx
and bl, -60
and ecx, edx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
test eax, 1340292467
cmovnb esi, ebx
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
movzx edx, cx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
