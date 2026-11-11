.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
cmovnb esi, edx
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
xor bx, cx
lea ebx, qword ptr [rdi + rdx]
imul bx, dx
add dl, sil
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rbx, rcx
lea si, qword ptr [rbx]
dec bl
imul cl
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
xor al, dl
cmovnle cx, cx
add rdi, 105
adc eax, -1513455903
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 94
not bx
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
mov rsi, rbx
add al, 118
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
bt edx, 86
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 1
add bl, bl
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
cmp rax, 2115020203
not edi
cmp sil, sil
bswap edi
cmovs di, di
sub rdx, 22
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
