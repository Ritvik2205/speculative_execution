.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, eax
sub esi, ecx
sub ebx, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
xor bl, 93
cmovs bx, di
mul ax
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
cmovns dx, si
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
cmovnb ax, ax
movzx bx, al
not rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 90
bt edi, 12
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
bt esi, 227
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
sbb sil, dl
add bl, 63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, eax
bswap rax
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 56
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmovnz di, bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 39
cmovnbe di, ax
mov rcx, rax
neg al
mul cl
cmovle esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
test dx, si
sub cx, bx
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
cmovnl dx, bx
cmovle dx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
cmovb esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
