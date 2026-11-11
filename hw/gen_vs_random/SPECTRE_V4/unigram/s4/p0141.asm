.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, rbx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
imul rdx, rdi
movsx edi, bx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
dec rbx
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
cmovle dx, dx
adc al, cl
cmp bx, si
imul rbx
add sil, 26
movzx edi, dl
inc rsi
add cl, -21 # instrumentation
adc rbx, 48
inc di
cmp ecx, 96
cmovns esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
bts ecx, 13
test bl, dl
mov ax, 71
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
or al, dil
mov rsi, 39
cmovp rsi, rax
inc edi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmovns cx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 74
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 5
cmp ax, -15031
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
