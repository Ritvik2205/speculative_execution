.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
cmp dx, 16
add dil, 110 # instrumentation
movsx si, dil
btc ax, cx
inc edx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
add dil, 16
add ecx, 54
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
cmp al, -23
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
btr si, bx
add dl, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
test dil, 4
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 55
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
add dl, 41
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
imul sil
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
bts rax, 157
or bl, cl
imul dx
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb rbx, 74
cmovnl rdi, rdi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 93
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
add cl, 8 # instrumentation
adc dil, bl
cmp sil, sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 34
btc rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
xor dl, dil
add sil, 110
sbb dil, 98
neg dl
cmovno edi, esi
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
