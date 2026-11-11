.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and al, cl
sub edx, 76
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
cmovl rdx, rcx
imul rdi
and cl, 58
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 7
add dl, dil
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add cl, cl
cmovb esi, edi
movzx ebx, dil
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
sub cl, bl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 20
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and bx, 95
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
add cx, 20
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or ecx, 19
cmp ax, -15409
sbb edx, 24
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 59
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
add dl, 31 # instrumentation
cmovnl cx, cx
test al, bl
xor dil, 83
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
sbb dl, -99
add cl, -82 # instrumentation
sbb dx, si
cmovnbe rsi, rax
mul rbx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
