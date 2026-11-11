.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
or dl, dl
adc di, -78
sbb eax, edi
or eax, 143573881
add dil, 105
cmp rdx, rbx
movzx rax, di
test sil, -119
neg ecx
or dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
cmp al, cl
adc ax, dx
cmovb rsi, rax
sbb sil, -124
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
xchg rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmp sil, -100
cmovs ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
imul ecx, ecx, -3
sub bl, al
cmovp rsi, rcx
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
xor al, 23
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
bswap rsi
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
cmp cl, bl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
bt dx, 193
mov rdi, rax
imul dl
or esi, edi
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
sub eax, -638345541
dec dl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
movsx rdx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
