.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
inc dx
and bl, -63
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
adc al, al
cmovnp ecx, ecx
sub dl, cl
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
movzx cx, dl
sbb ebx, edx
xchg edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
btc cx, 240
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
cmovb edx, edx
sbb al, -47
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rcx, -102
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
cmovp eax, ebx
xor esi, ecx
bts ebx, 22
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovb di, di
bt esi, edi
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmovnbe ax, si
add dl, -99 # instrumentation
not ecx
cmp al, 19
sbb cl, -104
test cl, bl
xor ax, di
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
imul dl
sub cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
bts eax, 209
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
