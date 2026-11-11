.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
cmovle edx, edi
adc bl, 89
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
imul cl
mul dl
cmovb ecx, eax
cmovnp rbx, rcx
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdi
or dl, dl
adc bl, al
cmovnb di, ax
sub esi, ebx
add bl, bl
xor al, 56
add cx, cx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 69
cmovnb rdx, rax
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
btc ax, si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
sub rsi, 26
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 81
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
test al, 80
cmovb edx, eax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
lea cx, qword ptr [rbx + rsi + 76]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
