.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
cmovnl rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
neg ecx
movzx rax, di
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 87
add al, 41 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 13
xor di, 48
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
movsx bx, bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 50
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 93
cmp al, -106
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
add cl, -20 # instrumentation
adc al, sil
btc rcx, 10
test bx, 24072
bt edi, 233
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
add bl, 127 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
btr rdi, 61
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
btc rax, rax
cmovo edi, eax
mul cl
and edx, 78
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
bts edi, edi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmp dl, -82
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
dec esi
or eax, edi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
add al, -3
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
