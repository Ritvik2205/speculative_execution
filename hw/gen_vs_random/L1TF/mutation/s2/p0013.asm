.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
dec ax
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
btc rcx, rsi
imul esi, edi
cmovno rdi, rax
and dil, -22
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
xor al, 89
jmp .bb_0.1
.bb_0.1:
sub dx, 34
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and ebx, 108
sub edi, ebx
setz al
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
add dl, 27 # instrumentation
setnle dl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
setb bl
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
or dl, -67
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and dl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
