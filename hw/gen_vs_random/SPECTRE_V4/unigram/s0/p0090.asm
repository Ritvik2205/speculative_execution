.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 91
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
movsx esi, cl
neg dx
mov rax, -8100960678429780222
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
sub cl, -51
add al, -82
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
add al, -3
bt edx, eax
cmovnbe rbx, rcx
btr ax, 109
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
btc ax, si
add al, dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
cmovle rdx, rbx
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
and dl, -104
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
xor rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
imul dl
movsx di, al
add cl, -20 # instrumentation
adc sil, bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
imul ecx
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
cmovp rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
adc ax, 29444
mul cl
cmovno ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
cmovnz cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
