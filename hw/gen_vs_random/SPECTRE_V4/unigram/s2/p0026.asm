.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle dx, si
cmovnb ax, ax
or dl, al
xor bl, al
sbb cl, -104
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
sbb sil, 108
or eax, 1802312508
add edx, 55
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
test dl, 19
btc di, 85
xor di, -43
cmovnbe dx, cx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
xor dx, 95
cmovo rcx, rcx
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmovp bx, ax
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rax, 46
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 20
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 37
bswap edi
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
movsx ecx, si
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
xor rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 64
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 19
sbb sil, 108
imul dx, bx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
adc dx, 100
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 78
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 81
sbb ecx, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
