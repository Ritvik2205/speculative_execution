.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
or eax, 1802312508
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
or cl, al
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 17
sbb al, 123
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
sub esi, edi
sub cl, -74
imul rdi
cmovp si, si
test ecx, 58
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
or dl, cl
cmovnl cx, cx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 92
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
btc rbx, rcx
add bl, -18 # instrumentation
mov rcx, rbx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmovnb ax, ax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
