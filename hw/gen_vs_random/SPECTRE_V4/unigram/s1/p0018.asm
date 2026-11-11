.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
xor rax, 63
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
cmp al, 114
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 23
xor bl, bl
mov al, al
add sil, 26
mul edx
test sil, cl
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
add rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
add ecx, ebx
imul cl
imul esi, eax, 78
sub bl, 17
sub eax, edx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
imul dl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 19
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], di
sbb cl, -104
neg al
adc edi, 41
cmovle rdx, rbx
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 23
cmovl rdi, rdx
or eax, edi
movzx ecx, cx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
sbb dil, al
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
mov rcx, 5862286138240743445
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
add sil, 56 # instrumentation
cmovle rax, rsi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
neg dx
and rdi, -2
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 38
add bl, -115 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
