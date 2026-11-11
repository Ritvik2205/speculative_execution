.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
cmovnbe rax, rsi
and rax, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rax]
and rcx, -102
sbb al, al
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and dl, 35
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 73
or bx, -111
xor bx, 16
cmovns si, dx
and rcx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
xor bl, sil
cmovnbe dx, si
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
cmovno ecx, eax
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 50
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 67
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
sbb rbx, rdi
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmp rsi, 18
and esi, 55
cmovz ebx, ebx
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
cmovnle bx, dx
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
sbb al, dil
sbb cl, 19
dec rax
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
imul rbx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
cmovle rdi, rax
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 82
xor rdx, rax
sub dil, -10
sub eax, edi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 52
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
