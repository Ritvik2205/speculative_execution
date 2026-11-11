.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and bx, 95
or edi, 21
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 43
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
bt edx, ebx
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 2
add dl, 41
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
movzx bx, dl
inc rdi
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
cmovb esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 61
bt esi, 227
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
adc al, 69
adc dil, sil
add dil, 72 # instrumentation
cmovle di, si
add edi, 11
bts rsi, rsi
add bl, -72
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
and cl, 58
sub cx, 71
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
sub sil, -50
cmovz si, si
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
sub cl, -74
cmp dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
