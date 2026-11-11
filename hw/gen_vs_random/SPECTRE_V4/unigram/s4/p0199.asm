.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, bl
add dl, -94 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
neg dl
movsx rdx, cl
imul rdx, rax, 66
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
add dl, dl
cmovnbe ax, cx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 9
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
btc rdx, 48
dec ebx
sbb al, 32
cmovnp rsi, rax
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
sub dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rcx]
xor ax, 28088
dec al
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
add sil, 110
dec al
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
cmovnz ecx, eax
dec rdx
test eax, -558243208
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 16
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add rbx, rsi
add cl, 95
sbb sil, 108
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
cmovo rbx, rdi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 48
and eax, -24
sub esi, 83
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 58
sub ebx, esi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
or bl, cl
cmovb ecx, edi
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
cmovnl rsi, rsi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
