.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, 44
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
mov dl, dil
cmovns dx, dx
add bl, -26 # instrumentation
btr ebx, 86
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 57
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
sub ax, dx
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
xor di, ax
and sil, -49
sub cl, 116
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
dec rcx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
mov dl, dl
xor sil, 56
sub bl, dl
inc rax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
cmovb edx, eax
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
cmovl rsi, rbx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
cmovle bx, bx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
add bx, 110
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 77
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 89
inc eax
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
dec si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
