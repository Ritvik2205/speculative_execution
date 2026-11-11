.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 90
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
mul ax
add dl, bl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
xor ax, 28088
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub ebx, 24
cmovno ax, ax
add sil, 26
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
xor di, cx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
add dl, 40 # instrumentation
cmovp rcx, rdx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
movzx si, dl
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
xor bl, al
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
add dl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
or al, -71
cmp ax, -15031
adc al, bl
not rdx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
add cl, bl
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovs di, di
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
xor eax, -437098167
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
movzx edx, sil
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
