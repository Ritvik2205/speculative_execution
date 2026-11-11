.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 15
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb sil, 108
adc ebx, 117
cmovnle di, dx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
adc si, 94
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
imul rcx, rsi
xor bl, 93
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and dx, 1
movzx edi, al
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
bts ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
mov rax, rdi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
test dil, al
bts ecx, 39
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 82
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
btc rax, 67
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
mul cl
and rbx, 110
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or al, dl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
bswap edx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
test si, 52
imul cx, ax
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
