.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
sbb al, 32
and rdi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdi]
test si, 24
xchg ebx, eax
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
add bl, dl
xchg bl, bl
xor bx, ax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 44
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
adc bx, -89
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
or ax, -12775
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or edx, ebx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
test dl, al
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
add bl, -109 # instrumentation
sbb eax, -2052726562
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
sub rdx, 22
bts rsi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmp rbx, 42
bts ebx, ebx
add al, al
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
cmovnbe rcx, rsi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
xor al, 102
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 10
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
imul rdi
sub eax, 2
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 50
sbb bl, bl
cmovle rax, rsi
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
