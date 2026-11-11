.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -119
movzx dx, dl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
not bx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
cmovl rbx, rsi
add dl, dl
sub rcx, -74
sbb al, -14
imul cx, dx, 98
sub ax, 25338
bt rdi, rdi
and ecx, edx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
or eax, 185586366
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
cmovnb esi, ebx
btc rdx, 178
or edi, -78
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
test eax, -651442446
and eax, -2040347881
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
or al, al
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
test bl, 110
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
imul si, di, -97
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
movzx edx, cx
sbb esi, ecx
test bx, dx
adc bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
