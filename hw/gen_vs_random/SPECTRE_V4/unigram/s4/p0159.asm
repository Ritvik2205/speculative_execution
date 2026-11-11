.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg si
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
cmovle rdx, rbx
cmovnle ebx, esi
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 82
or al, 95
sub rcx, 100
xor cx, di
cmovle edx, ecx
bts edi, 167
xor bl, 93
sbb ebx, edx
cmovb edi, edi
or edi, 42
neg bl
test dx, si
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 74
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
test eax, 1561062795
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
sub sil, sil
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
btc cx, 240
cmovnbe rdx, rbx
cmp sil, 88
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 64
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
sbb cl, -104
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
adc sil, al
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
test sil, 8
cmovnz edi, esi
bts esi, esi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 91
add dx, -90
or edx, -127
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
