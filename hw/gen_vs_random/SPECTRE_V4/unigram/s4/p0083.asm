.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rdx
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 25
xchg eax, ecx
and dl, 88
or sil, bl
sbb di, -76
and rax, 11
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
movzx bx, cl
imul dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 48
add dl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
or edi, 37
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 8
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
dec sil
cmp dx, 63
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], di
cmovnb rdx, rcx
cmovnz si, bx
cmovle rax, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
xor dx, 10
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add dl, 41
test eax, -558243208
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 51
test eax, -558243208
test bx, si
add bl, -115 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 88
sub sil, -50
neg rbx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
cmovle ax, bx
movzx edx, dil
sbb bl, 57
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
test di, si
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
