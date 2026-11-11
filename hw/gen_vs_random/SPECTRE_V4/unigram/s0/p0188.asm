.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
sbb al, al
or al, 96
cmp di, 39
imul sil
and rbx, 69
cmovs rbx, rdi
sbb dil, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
xor bl, 93
cmovb edx, ebx
test al, 66
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
adc rdx, 25
add dl, bl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
movzx ax, al
cmovnb esi, edi
sub edx, ebx
and eax, -37
test dx, di
sub rbx, 71
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 51
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 36
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rsi]
or al, dl
cmovnbe di, bx
bts edx, 29
adc ebx, 117
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
test rdx, 13
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
add bl, dl
bt ebx, edx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
sub edi, 17
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
test dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
