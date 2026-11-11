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
add rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor di, ax
xor dl, bl
or ax, -15282
or al, 109
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovns ax, ax
cmovs eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bt edi, ebx
xchg eax, ebx
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add sil, 110
sub dl, al
add rdi, -94
and bl, -63
xor cl, -101
neg ebx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
imul dx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test eax, -818909344
add dl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
neg rbx
xor ax, 28088
cmovle rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
or eax, 1802312508
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
sub dl, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
or al, 109
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
lea eax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
