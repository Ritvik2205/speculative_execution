.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
add dl, dl
adc bl, bl
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
btc rdx, 130
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
movzx dx, dl
sbb al, -14
sub ax, 17434
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
add dl, 92 # instrumentation
cmovnl rdi, rsi
sbb esi, ecx
test bl, -91
and eax, -1237519395
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 75
and bl, -30
or eax, -863161215
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
bt rdi, rdi
test bx, dx
sub rcx, -99
test eax, -251558852
imul si, di, -97
movzx edx, cx
imul cx, dx, 98
cmovl rbx, rsi
cmovnb esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
or al, al
not bx
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and ecx, edx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
or edi, -64
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
