.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
movzx rbx, cx
adc dil, 112
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
add dil, 70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
xor cl, -101
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
imul edx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 38
and cx, -117
mov dil, dl
imul dx, di, 53
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 4
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdi
dec al
cmovno rdx, rax
not cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
test dl, dil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
adc al, 116
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdi
add cl, -69 # instrumentation
adc al, al
and eax, -2001076187
add eax, 953442933
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
bts si, ax
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
btr si, di
or si, 85
sub ebx, 78
movsx edi, sil
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
xor rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
