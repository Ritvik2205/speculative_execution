.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
movzx edx, cx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and eax, -2001076187
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
movzx dx, dl
test bx, dx
test eax, -31785616
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or edi, -64
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
or eax, 1470564945
or al, al
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
sub ax, -13057
test bl, -29
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
bt rdi, rdi
adc bl, bl
sbb rbx, rcx
sub ax, -1393
adc rax, -691707152
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
xor ax, di
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
mul rbx
sbb rax, 59
and dl, bl
mov rax, -4627568876460436527
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
cmovle dx, bx
cmp cl, -105
xor di, dx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
cmovl bx, si
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
sub cl, -94
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
