.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, cl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
or bl, dl
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 65
or dx, bx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 61
sbb al, -101
or al, 96
mov rdx, rax
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
cmovl rdx, rsi
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
add bl, bl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
mov al, al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
cmovnb edx, esi
add rcx, rdi
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], ax
add dil, dil
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
or eax, esi
test ebx, edi
or eax, -1434249782
test ebx, 1263899340
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
test al, cl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edi, eax
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
cmovno eax, esi
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
and bl, -63
test bl, 0
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
mul rbx
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add di, -74
cmovns di, cx
sub sil, cl
xor bx, 63
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
