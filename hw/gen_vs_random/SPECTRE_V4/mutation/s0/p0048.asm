.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmovnp ecx, ecx
xor esi, ecx
bts ebx, 22
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
cmp al, 114
movzx cx, dl
and rcx, -102
adc al, al
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
test cl, bl
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
xchg edx, ecx
sub cl, cl
bt esi, edi
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
cmovb di, di
cmovb edx, edx
imul dl
sbb al, -101
cmovnbe ax, si
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
xor ax, di
bts eax, 209
sbb ebx, edx
cmovp eax, ebx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and bl, 26
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
inc dx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
btc cx, 240
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
sbb cl, 19
add dl, -99 # instrumentation
not ecx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
