.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, ecx
test cl, bl
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
bt esi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
inc dx
sbb ebx, edx
cmp al, -23
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
cmovb di, di
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovnp ecx, ecx
btc cx, 240
bts eax, 209
adc al, al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
sbb al, -47
and bl, -63
add dl, -99 # instrumentation
not ecx
sub dl, cl
and rcx, -102
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
xor ax, di
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
xchg edx, ecx
sbb cl, -104
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
cmovb edx, edx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
movzx cx, dl
cmovnbe ax, si
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
cmovp eax, ebx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
sub cl, cl
bts ebx, 22
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
