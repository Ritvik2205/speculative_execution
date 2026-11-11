.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -16
and rax, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rax]
cmovb dx, di
not edx
cmovl esi, ecx
xchg rbx, rax
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
add cl, 47 # instrumentation
cmovnle si, cx
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
dec rax
cmovnz bx, ax
sbb al, sil
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
sub edi, 71
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
mov cl, dil
cmovs rax, rcx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
sbb sil, -11
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
cmovo dx, cx
btr bx, si
and bl, -60
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and eax, 1913354318
and rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 22
add cl, -106 # instrumentation
cmovno rdx, rsi
add esi, 42
add bl, -57 # instrumentation
cmovno rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 48
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
adc rdi, 9
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
xor dil, bl
movzx ebx, dil
xor si, -73
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
