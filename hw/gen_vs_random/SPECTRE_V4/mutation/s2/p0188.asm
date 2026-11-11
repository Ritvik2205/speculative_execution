.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmovz ebx, edx
mov rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -74
cmovnbe dx, di
xor al, 106
mov bl, cl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
test edx, 1479885278
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 7
bswap edx
cmp eax, -2073187604
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
add dl, cl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
bt rsi, 242
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
cmovnle rdx, rcx
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
sbb esi, eax
dec cl
cmovo si, bx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
bts edi, edx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
or dl, dl
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
cmovnbe ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and ecx, edi
cmp cl, cl
movsx rax, si
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
