.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
xchg edx, ecx
sbb ebx, edx
sbb cl, -104
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
imul dl
adc al, al
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
movzx cx, dl
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
add dl, -99 # instrumentation
not ecx
cmovb di, di
sub cl, cl
cmovb edx, edx
sbb al, 32
bts ebx, 22
bts eax, 209
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, -102
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
bt esi, edi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and bl, -63
btc cx, 240
cmp al, -52
test cl, bl
cmovnbe ax, si
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
cmovp eax, ebx
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
sub dl, cl
cmovnp ecx, ecx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
xor esi, ecx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
xor ax, di
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
