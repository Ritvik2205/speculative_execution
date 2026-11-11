.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
btc dx, 16
xor al, 102
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sbb al, -62
cmovnbe rcx, rcx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
dec bl
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
movsx rsi, al
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 90
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
cmovo rcx, rcx
or edi, eax
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
adc bx, -89
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and cx, 17
cmovnle eax, ebx
sbb bl, 57
sub ecx, ebx
movzx cx, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 16
xchg bl, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
xor ax, 28088
cmp al, 114
mov edi, -1544998000
sub dl, dl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and cl, -109 # instrumentation
cmovns rdi, rdi
cmovnb rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
