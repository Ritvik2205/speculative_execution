.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdx, rbx
xor al, cl
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 36
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 1
cmovnle rbx, rbx
cmp rdi, 22
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
sbb bl, -94
cmovnbe rax, rbx
cmovnbe dx, si
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 35
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
neg dil
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
xchg rdx, rbx
add bl, -115 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 26
and rax, 89
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 16
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
add sil, 56 # instrumentation
cmovle rdx, rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
cmovp edx, eax
not di
imul cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
cmovs bx, cx
test al, al
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
test sil, cl
and di, 30
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
add cl, -21 # instrumentation
adc rdx, 20
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
