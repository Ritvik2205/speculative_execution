.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 102
btc rax, rbx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovp edx, edx
xor cl, al
xchg dil, dil
or al, 95
or sil, 28
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
cmovnb rcx, rax
cmovl rdi, rcx
cmp bl, dil
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
cmovnbe edx, edi
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
sub al, al
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
cmovnbe rdi, rbx
and eax, -37
imul rsi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
movzx esi, bl
adc bl, dl
adc rax, 1542637830
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
test di, bx
add cl, -21 # instrumentation
adc rax, 65
cmovs ebx, esi
xor edi, ecx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
adc bl, sil
sub rax, -701741274
cmovnbe rdx, rbx
add bl, dl
sbb cl, cl
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and cl, sil
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
