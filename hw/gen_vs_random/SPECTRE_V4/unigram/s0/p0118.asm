.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 87
not di
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
cmp ebx, 80
add cx, 54
cmp dx, 45
add bl, -109 # instrumentation
sbb edx, 69
cmovnb edx, ebx
and al, cl
cmp bl, dl
not ax
btc rsi, rcx
test ecx, 15
adc dl, 53
add sil, 110
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
xor al, -2
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 37
not rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
test dl, 19
xchg bl, bl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
xor edx, 24
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
movzx dx, dl
mov edx, ebx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
cmovnbe ax, di
or cx, 13
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
cmovns di, bx
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
cmp dl, 45
mov rsi, rdx
cmovnb edx, eax
sbb dil, dil
sub dl, 43
and sil, -49
not rdx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe eax, ebx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
xor dl, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
