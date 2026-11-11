.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, cl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 57
add bl, -49
test si, 8
not ax
test sil, -119
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
add al, al
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
sub edi, 82
xchg eax, edx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
btr rdx, rdx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
add al, 20 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
dec di
add bl, 32 # instrumentation
adc rbx, 88
sbb rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 22
add sil, 74 # instrumentation
cmovle esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
btc rdx, 130
and bx, si
add cl, dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
sbb al, cl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
movsx edx, ax
sub edx, eax
mov bl, sil
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
cmp di, -8
cmovle rdi, rcx
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 79
xchg al, al
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
add dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
movzx esi, si
cmovp rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
movzx rax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
