.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rbx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 12
bt edx, 93
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
cmovo rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 60
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
cmovb ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
mul rbx
add bl, -109 # instrumentation
sbb eax, -2052726562
add al, -10 # instrumentation
cmovnbe eax, ebx
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
adc edx, 88
not eax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
test sil, sil
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
cmovle ax, bx
sbb ebx, 12
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
add rsi, rcx
cmovnb ebx, edx
add bl, 65 # instrumentation
cmovnp ax, cx
mul dl
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
or cx, dx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
xor cl, cl
cmovl rdx, rsi
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 44
cmovnbe si, dx
btc si, 96
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
sub bl, bl
cmp cl, dl
xor edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
test esi, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
