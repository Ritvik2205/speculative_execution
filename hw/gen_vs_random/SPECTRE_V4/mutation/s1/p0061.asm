.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 22
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bts eax, 209
imul dl
and rcx, -102
cmp al, -23
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
cmovnbe ax, si
sbb ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
btc cx, 240
sub cl, cl
cmovb di, di
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
inc dx
sbb cl, 20
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
sub dl, cl
xor ax, di
xor esi, ecx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and bl, -63
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
cmovb edx, edx
cmovnp ecx, ecx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
test cl, bl
add dl, -99 # instrumentation
not ecx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
bt esi, edi
movzx cx, dl
cmovp eax, ebx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
adc al, al
sbb al, 32
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
xchg edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
