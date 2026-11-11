.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 44
mov dl, sil
cmovnp si, di
movzx ecx, bl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
adc sil, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
cmp bl, -16
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 80
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
sub bl, sil
cmp ebx, -27
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
adc dl, cl
add al, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
cmp al, dl
and rsi, 0
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 72
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
inc rbx
cmovnz ax, ax
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
test edx, 1479885278
cmovnl di, di
inc ax
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
test edi, 2142010790
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
movzx rcx, bx
cmovbe ax, bx
and al, al
sbb bx, bx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
not sil
xor sil, 7
test ebx, 14
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdi
test ecx, 860867711
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
or sil, cl
cmovle rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
