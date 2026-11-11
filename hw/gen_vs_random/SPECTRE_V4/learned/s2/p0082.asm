.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 98
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 10
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
xor edi, 32
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, bx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
sbb ax, -19255
test edx, 573099753
imul edx, edi, 78
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 9
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
test eax, 1880179600
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
cmovo rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
mul rbx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and al, -127
cmovnle eax, esi
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
and al, dil
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
cmovnbe rcx, rdx
test bl, cl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
imul cl
add dl, -114 # instrumentation
cmovl cx, bx
cmovnl rbx, rcx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
sbb cl, bl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
cmovnbe cx, si
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
xor sil, cl
add rdi, rbx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovl rdi, rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
lea rsi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
lea edx, qword ptr [rdi + rbx + 30]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
