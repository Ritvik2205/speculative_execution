.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
adc rsi, 100
test ax, si
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
add rax, 55
bt esi, eax
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
xor al, sil
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
test sil, sil
cmovle dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
add cl, 122 # instrumentation
cmovz rdx, rcx
not si
xchg rdi, rax
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 95
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add cl, -37 # instrumentation
adc ebx, 79
cmovnz dx, si
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
sbb cl, -104
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
not rdi
sub dl, 43
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
sbb sil, 108
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
sub dl, 43
add cl, -21 # instrumentation
adc rdx, 96
cmovb eax, edx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
cmovnb si, si
add dil, cl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
