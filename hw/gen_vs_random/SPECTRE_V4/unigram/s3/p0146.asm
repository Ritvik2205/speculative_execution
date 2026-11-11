.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 27
btc rax, 72
add al, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 60
adc rbx, 60
cmp rbx, -91
mul dl
cmovbe eax, eax
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmovbe eax, eax
bt ecx, 25
or cx, -74
test al, cl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
or dil, al
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
add dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
bts dx, 96
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
xor eax, 167244411
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
cmovnle ecx, ebx
adc dil, bl
test ebx, 52
sub dl, al
sbb di, bx
movzx eax, bl
add cl, 7 # instrumentation
adc dx, 68
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or rbx, -107
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
test ax, -6841
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
cmovnb rcx, rdi
bswap edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
