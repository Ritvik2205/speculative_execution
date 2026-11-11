.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 28666
mul ax
test dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or si, 0b1000000000000000 # instrumentation
bsr di, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add dil, 16
adc esi, 90
movzx ax, dl
xor eax, -164167056
and dil, 96
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
and dl, cl
inc rsi
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
add dl, al
and al, -36
sub esi, 63
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
or cl, 23
add dil, 82
cmovnle eax, edi
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xchg bl, sil
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
cmp bl, bl
cmp ax, 23131
test ax, cx
dec bl
imul cl
or al, 109
movzx bx, cl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
mul rbx
add eax, -1796699558
bt ebx, 228
sbb dl, bl
cmovnbe rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
