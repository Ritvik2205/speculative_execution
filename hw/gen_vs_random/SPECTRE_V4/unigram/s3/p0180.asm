.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
neg dil
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
movsx rdx, di
xor ax, 30500
xor al, bl
or ebx, -78
test edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
mov eax, edx
xor si, bx
cmovle rax, rdx
cmp sil, -100
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
xor rdx, rcx
cmovnb di, cx
xor rcx, rax
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
cmp rax, 1097504565
cmovnp rbx, rdi
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rbx
sbb dil, dl
add cl, sil
adc al, cl
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
bswap rdx
and di, -65
sbb sil, sil
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 31
cmp edi, 3
or dl, -26
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
add bx, bx
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
bts ax, 159
mov edx, -950755477
add dil, 47 # instrumentation
cmovnle si, di
add dl, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
