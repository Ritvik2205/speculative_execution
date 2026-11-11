.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bx, 110
and cx, 17
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
xor cl, -54
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
bts edi, 167
xor dl, 97
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
add cl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
add rdx, 90
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
cmovns edx, ecx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
adc dil, dil
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
or di, dx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add dil, cl
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdi]
cmovb eax, edi
and bl, 26
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 81
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 95
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
test rbx, 34
mov cl, cl
xchg ax, si
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
and al, dl
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
test al, 80
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
xor bl, 93
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
