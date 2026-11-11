.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, sil
or cx, 80
sbb dx, 80
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
sbb al, -101
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
cmovns rax, rbx
adc dl, bl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 46
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 25
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
mul ax
cmp bl, 13
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], 87
cmovnbe rdx, rbx
sub bl, dl
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], cx
cmovnb dx, dx
cmovl rax, rdi
btc eax, 43
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and bx, 95
adc bl, 89
test eax, -818909344
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
movzx rax, bx
add al, al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmovnbe eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 31
add cl, -117 # instrumentation
cmovs rdx, rax
add dil, 82
sbb ebx, 69
cmovnle dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
