.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
add bx, 110
cmovnl rax, rcx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
cmovno esi, edx
adc rbx, 66
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
add bx, 110
cmovnbe edi, eax
cmovb esi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
sub bl, bl
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and edx, 9
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 56
adc rbx, rsi
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
cmovnb dx, dx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 9
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add cl, 110 # instrumentation
movsx si, cl
test rcx, -2118888343
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 59
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
movsx esi, al
and dx, 1
cmovz edx, edx
inc bl
movzx eax, al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
sub dl, dl
or dil, dl
test ebx, -595096626
add dx, -90
xor sil, 56
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
sub dx, 25
mov al, 10
cmovnbe rax, rdx
cmp dl, 84
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
