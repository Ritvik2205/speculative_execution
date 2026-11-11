.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul cl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 63
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmovnz ebx, ecx
cmovp eax, ebx
bt edi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
not rax
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
cmovz eax, eax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and dil, 96
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
imul bx, si
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
add dil, al
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 52
and al, -127
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 92
cmovle rax, rsi
xor bl, al
or bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
btc rax, rcx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
cmovnbe rsi, rbx
sub esi, ebx
btc bx, 55
movzx edx, dx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
or dx, bx
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
sbb ax, -19255
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 64
cmovle cx, cx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 73
xor eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
add bl, 38 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
btc eax, 75
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
