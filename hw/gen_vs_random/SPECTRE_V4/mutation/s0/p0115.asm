.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 209
and bl, -63
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
xchg edx, ecx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, -102
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
cmovnp ecx, ecx
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
sbb al, -101
imul dl
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
xor ax, di
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
sub dl, cl
xor esi, ecx
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
btc cx, 240
cmovb edx, edx
bts ebx, 22
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
bt esi, edi
add dl, -99 # instrumentation
not ecx
sbb cl, 20
cmovp eax, ebx
cmovnbe ax, si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
test cl, bl
adc al, al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
movzx cx, dl
sbb ebx, edx
inc dx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmovb di, di
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
sub cl, cl
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
