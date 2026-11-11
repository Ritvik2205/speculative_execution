.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, dx
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
sbb sil, -11
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
sbb eax, edi
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
imul dl
movzx rax, di
neg ecx
sub bl, al
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
sub eax, 1050143384
add dil, -61
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
test sil, 68
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
imul ecx, ecx, -3
xchg rsi, rax
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
cmp sil, -100
dec dl
cmp cl, bl
cmovp rsi, rcx
bt dx, 213
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmp al, cl
cmovs ecx, esi
adc di, -78
movsx rdx, bx
mov rdi, rax
or dl, dil
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
or dl, dl
bswap rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
xor al, -84
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
cmp rdx, rbx
or esi, edi
cmovb rsi, rax
or eax, -1341747033
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
