.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor di, ax
test ecx, 80
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
xchg rcx, rax
add al, sil
adc sil, 65
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and ax, 35
test dl, 19
cmovnb rdx, rbx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
not bx
xor dl, al
add rdi, 105
xor bl, 93
xor cl, -85
neg ebx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
imul dx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
sbb cl, bl
xchg dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
cmovle rdi, rsi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
or eax, -1434249782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
