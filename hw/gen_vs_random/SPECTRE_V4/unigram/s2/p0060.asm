.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, ax
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 81
and rsi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
sbb cl, 19
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sub al, 98
cmovz edi, eax
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 36
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
movzx rsi, dx
sbb sil, 108
mov rdx, rcx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
mul rbx
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
or sil, 17
sbb ebx, edi
and dl, 79
test edx, 573099753
adc ebx, 117
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and esi, 55
sbb bx, cx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
cmp cl, 5
inc rax
test sil, cl
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
cmovnbe rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
dec bl
mov dx, 43
adc dl, al
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
bt ebx, edi
add cl, 122 # instrumentation
cmovz rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 35
cmovb edi, edi
and rdx, 57
cmovnb si, si
bts rax, 157
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
