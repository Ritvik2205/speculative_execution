.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
mov edi, 412386591
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
bt rdi, rbx
cmovnb rax, rsi
xor di, 58
or rdi, 43
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
add bx, 40
sub cl, cl
imul rdi, rax, 36
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
xor sil, 92
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
imul rdx, rbx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 46
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
mul cl
mov sil, bl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
adc rcx, -99
add dl, -25 # instrumentation
cmovs rax, rcx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
or bl, bl
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
imul dx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
cmovp rcx, rdx
mul rbx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
