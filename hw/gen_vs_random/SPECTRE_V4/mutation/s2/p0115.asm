.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
sub dl, cl
bts eax, 209
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
bts ebx, 22
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
inc dx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
xor esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovp eax, ebx
movzx cx, dl
xor ax, di
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
btc cx, 240
sub cl, cl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, -102
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
sbb ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
cmovb di, di
cmovb edx, edx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
cmp al, 81
sbb al, -101
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
cmovnp ecx, ecx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
imul dl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
bt esi, edi
xchg edx, ecx
and bl, -63
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
adc al, al
cmovnbe ax, si
add dl, -99 # instrumentation
not ecx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
sbb cl, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
