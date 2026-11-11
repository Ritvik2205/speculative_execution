.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor di, ax
xor dl, bl
or ax, -12775
or al, 96
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovns ax, ax
cmovs eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bt edi, ebx
xchg eax, ebx
or rdi, rax
cmovnl rax, rax
movzx ecx, sil
test ebx, -595096626
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmovnp ecx, ebx
and bl, dl
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnz eax, ebx
test rcx, -2118888343
adc al, cl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
not cx
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
sbb eax, 4
cmp rax, -227205962
cmovp cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
