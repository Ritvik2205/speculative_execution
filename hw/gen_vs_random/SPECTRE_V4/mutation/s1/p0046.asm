.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
imul dl
sbb sil, -124
add dil, 75
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
or dl, dil
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
sub eax, -672265139
cmp rdx, rbx
cmp al, cl
cmp cl, bl
movzx rax, di
cmovp rsi, rcx
bt dx, 213
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
test sil, 68
adc di, -78
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
sbb eax, edi
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
neg ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
adc ax, dx
movsx rdx, bx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
cmovb rsi, rax
cmovs ecx, esi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
imul ecx, ecx, -3
cmp sil, 127
or dl, dl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
bswap rsi
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
or eax, -646827727
sub bl, al
mov rdi, rax
xor al, -31
or esi, edi
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
dec dl
xchg rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
