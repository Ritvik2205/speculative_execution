.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add cl, al
xor dil, 6
sub cl, -74
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
cmp rsi, 72
xor edi, 59
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 60
sbb esi, 59
sub ecx, edx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
add dx, -90
sbb ebx, edi
xchg di, dx
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 49
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 37
mul edx
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 54
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add dil, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 77
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
cmovle dx, dx
and dl, 70
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
xor dl, 11
bt si, 16
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
inc si
movzx cx, al
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 90
sbb cl, 19
sbb edi, esi
test dil, 14
or al, -71
adc edx, 35
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
