.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, rdx
sbb dil, 1
cmovle rsi, rcx
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 67
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 33
or ecx, edi
cmovb eax, ebx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 47
or edi, ebx
add cl, cl
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
imul cl
test bl, al
btr rax, rcx
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
cmovb rsi, rcx
sbb bl, 57
inc eax
sub eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
btc rsi, rax
or dil, dl
bswap eax
or esi, 73
movsx edx, sil
imul si, cx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
sub cl, 116
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
not bx
bt ecx, 43
xor dx, 72
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
dec dx
add cx, 61
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
cmovb cx, cx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
or al, dil
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
