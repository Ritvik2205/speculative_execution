.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1802312508
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
btr di, 36
lea ax, qword ptr [rbx + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and cl, -109 # instrumentation
cmovns rdi, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
adc eax, -1513455903
cmovp rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
mov rbx, 9101099553822202722
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 95
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
cmovnz edx, edi
cmovs ecx, ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
or ax, -15282
xchg cx, ax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rcx
cmovnbe rbx, rax
cmovnp ebx, eax
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
not rdx
inc esi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
test rcx, -2118888343
adc al, sil
test eax, -558243208
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
adc dl, 64
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
not bx
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 44
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
