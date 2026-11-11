.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmp cl, bl
sub eax, -1804712207
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
sbb bl, -75
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
bt di, 49
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ecx
sbb si, si
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
adc cl, bl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
bts rcx, 60
add bl, 54
adc esi, 45
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
btc ax, si
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
neg dx
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
dec dl
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
sub ax, -1393
bts di, 30
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
xchg sil, dl
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
test dil, -83
neg sil
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
and dl, -53
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmp dl, 45
adc ax, di
cmovno edi, eax
or edx, 0
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
