.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, 187
add al, 121 # instrumentation
movsx eax, si
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 88
test rdi, -795635070
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
sbb dil, 32
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
adc sil, dl
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx], 97
xor ecx, 49
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
cmp esi, 123
sub edx, 73
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 55
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
cmovno rdx, rsi
mov edi, -744634650
sbb rcx, -73
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
test dl, -102
add bl, -57 # instrumentation
cmovno rbx, rcx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
add dl, bl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
sub ecx, edx
xor sil, dil
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
imul eax
dec dl
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
inc al
test dl, 24
sbb eax, 40509622
cmovno ecx, eax
movzx edx, dil
adc dil, 112
add ax, cx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
