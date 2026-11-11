.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rbx, 49
or edx, -127
test al, 66
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 85
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 16
cmovnp esi, ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
cmp al, -23
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 3
cmovnbe rcx, rcx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
test rbx, 26
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
test al, dil
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
add si, si
btr cx, di
cmp sil, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 90
adc cl, 78
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
cmovns ax, bx
sbb bl, dil
imul rdi, rbx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
mov rax, rdx
add dl, dl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 82
test esi, 34
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
adc edx, 49
adc sil, bl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
mov ecx, ebx
add dl, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], eax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add al, dil
and rcx, -102
cmovnb esi, ecx
movzx rbx, di
add dl, -94 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
cmp rdx, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
