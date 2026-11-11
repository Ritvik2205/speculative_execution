.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 30
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
add sil, 110
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
sub sil, sil
xor di, dx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 21
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
adc sil, al
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 21
mul ax
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add al, sil
or ax, -12775
cmovs ax, si
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
imul rdi, rbx
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
xor edx, 83
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
btc di, 62
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
add dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
bts cx, 2
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 45
sub dl, dl
add eax, -1796699558
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
sbb al, 32
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
neg rax
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
cmovnbe rdx, rax
add ebx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
