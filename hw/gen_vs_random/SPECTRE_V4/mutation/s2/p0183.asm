.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 69 # instrumentation
cmovnbe di, cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
add bl, 102 # instrumentation
cmovnp edi, eax
or eax, 1470564945
sub rax, -1881584175
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
or al, -90
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovs cx, bx
test dl, -125
or edx, -118
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
adc sil, 88
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
add bl, cl
add cl, al
cmp edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
add al, -44
sub bl, dil
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovno rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
or rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or ax, 57
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
imul edx, edx
cmovo si, dx
cmp cl, dl
movzx edi, bx
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmovp rax, rcx
test dl, 114
cmp edi, ebx
not dil
cmovle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
