.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 37
add sil, -57 # instrumentation
cmovno rsi, rcx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovz dx, si
adc al, -70
test cx, dx
cmovs esi, edi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 39
mov ebx, 51969593
test eax, -31785616
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
sbb cl, 35
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 17
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 28
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and ecx, 71
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
adc sil, dil
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ecx
bt di, 29
mov rdi, rdx
xor rcx, 112
add dil, 47 # instrumentation
cmovnle dx, di
cmovb ecx, edx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
imul cx, cx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 99
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
inc rbx
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and di, -34
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], cx
test ecx, -1293796332
cmovl rdi, rsi
test bx, 24072
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 94
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 34
or rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
