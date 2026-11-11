.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, 78
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
cmovno rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
mul bl
sub dx, si
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
add si, 81
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
add dl, al
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
imul eax, ecx, -17
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
btc edx, 108
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or rbx, 69
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
bswap edx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
test ax, 19171
xor ax, 15671
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
xor rsi, rdi
xor eax, 365940537
sbb cl, 45
add dil, 105
sbb rdx, -43
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
adc ebx, 66
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
xchg dl, dil
cmovo ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test al, dl
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
test ecx, eax
btc di, 83
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
sbb edi, -94
cmovs rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
