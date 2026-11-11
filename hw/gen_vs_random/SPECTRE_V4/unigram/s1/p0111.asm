.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
sub al, 98
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
test esi, 11
btc rax, rdx
and cl, 58
or bl, cl
cmp dl, 8
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
cmovs esi, edi
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
mov rdx, rsi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 72
mov edi, eax
add al, al
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 60
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
mov cl, sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
test rbx, 31
cmovnbe rsi, rbx
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 19
movzx esi, al
cmovo ebx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
test dl, 19
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 96
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 69
adc edx, 21
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 42
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 48
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
btc dx, 119
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 16
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
