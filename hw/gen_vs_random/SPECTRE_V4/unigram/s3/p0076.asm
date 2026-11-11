.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rsi, -115
test sil, bl
and rbx, 110
xor rsi, rbx
bt ecx, eax
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], 28
sbb sil, 108
cmovb rdx, rbx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
sub bl, al
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
imul rdi, rsi, 57
mul cl
or bl, dl
bt ebx, 228
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
sub eax, 2030845821
and dil, cl
add dl, 41
add cl, 106 # instrumentation
cmovnp rax, rdx
xor al, 56
cmp rdx, 48
not ax
cmovnp bx, bx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
add dl, dl
cmovb dx, dx
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmovl rax, rsi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
xchg rcx, rsi
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 43
add ecx, 18
cmovle ax, ax
add dl, -99 # instrumentation
not eax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
btr rdx, rsi
bts esi, 241
mov al, al
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
