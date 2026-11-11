.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 2115020203
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
add sil, 110
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
imul cl
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
add dl, 31 # instrumentation
cmovnl cx, cx
add rsi, rdx
sub al, cl
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
cmovns cx, cx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
test rdx, 26
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and bl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
movzx ecx, sil
cmovnbe rax, rcx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 96
add rdi, -94
movzx edx, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
adc bl, dil
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
sub ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
