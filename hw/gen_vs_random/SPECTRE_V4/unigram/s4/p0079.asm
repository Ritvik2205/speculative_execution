.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 101 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and sil, -84
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
dec dl
mov al, 124
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
imul dl
adc dil, 109
add ax, -7857
dec cl
test dl, al
test rcx, rdx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
or bx, -33
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and cl, sil
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
cmovl rdi, rbx
cmovl ecx, ebx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovl eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
neg rbx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rax
test eax, 1600638830
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
add bl, dl
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
or cl, bl
xchg bx, bx
add dl, -82
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
dec al
cmovb cx, si
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
test edi, 2142010790
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
