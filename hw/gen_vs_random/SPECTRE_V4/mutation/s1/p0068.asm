.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
xchg rsi, rax
adc ax, dx
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
cmovp rsi, rcx
mov rdi, rax
add dil, -84
cmp al, cl
cmp cl, bl
adc di, -78
sub bl, al
or esi, edi
imul ecx, ecx, -3
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
or eax, 1470564945
sub eax, 490935921
neg ecx
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
bswap rsi
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
movsx rdx, bx
or dl, dil
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
sbb sil, -124
sbb eax, edi
dec dl
movzx rax, di
xor al, -66
test sil, -119
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
cmp rdx, rbx
or dl, dl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
bt dx, 81
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
cmp sil, 127
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
cmovb rsi, rax
cmovs ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
