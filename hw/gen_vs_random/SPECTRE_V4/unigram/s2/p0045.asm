.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
sbb dil, 32
test eax, -544019457
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
bts eax, eax
xor di, -43
add eax, -1796699558
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
movzx ax, al
add al, al
cmovnbe si, bx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 71
cmovp rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
cmovnp dx, dx
add dl, -114 # instrumentation
cmovl dx, si
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
cmovnz ecx, eax
or dl, dil
xchg dx, ax
not dil
cmovs rcx, rax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
bts edi, 167
or dl, al
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add cl, -117 # instrumentation
cmovs rdi, rcx
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
cmovle rdi, rax
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
dec rcx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 70
cmovnle rdx, rdx
bt ebx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
dec al
add dl, -99 # instrumentation
not eax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
sbb sil, 108
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 66
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
bts ecx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
