.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
sub cx, -114
mov eax, -1056201206
cmovl cx, si
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
mul bl
sbb rdi, 10
add al, 16 # instrumentation
cmovnz dx, ax
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
neg rcx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 28
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 98
cmovz rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 16
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and al, 75
not rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
adc cl, dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
cmovz ax, bx
xor rdx, rcx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
or dl, 71
sub sil, -35
or al, dl
sub cl, 18
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
cmp cx, 0
sbb di, -105
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
sub dl, -16
sub rax, 714283065
cmp al, 114
cmovnbe rdx, rax
xchg rcx, rsi
sub sil, al
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
