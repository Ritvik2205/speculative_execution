.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
add al, 122 # instrumentation
cmovns esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmovle rax, rcx
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
imul rdx, rdi, 7
cmp al, -23
movsx rsi, bl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
test al, 66
or cl, 14
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
btc si, 57
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 8
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
imul rbx, rax, 53
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 94
add dl, -99 # instrumentation
not eax
test rcx, -2118888343
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rsi
add rdi, -94
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
sbb ebx, esi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
add al, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
xor al, 102
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
sub ebx, 84
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
add al, dl
add dl, 31 # instrumentation
cmovnl di, di
cmp sil, bl
btc rdi, rsi
xor dil, 69
cmovnl rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 66
cmp al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
