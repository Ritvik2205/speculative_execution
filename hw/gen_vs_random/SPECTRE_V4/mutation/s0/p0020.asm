.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
adc bl, dl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
or al, cl
cmp rax, 40
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
inc edi
inc ax
test ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
add cl, 62 # instrumentation
cmovnz di, di
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
btc rcx, rbx
add cl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
test bl, -16
movsx rdx, sil
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
adc eax, 917540672
add bl, cl
adc cl, al
sbb al, 95
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi], 61
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
imul di
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
mov rdx, -3088288992777791879
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
btc dx, si
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
dec ax
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
bt rsi, 153
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
