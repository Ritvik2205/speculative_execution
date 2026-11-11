.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, di
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
cmovb di, di
imul dl
and bl, 26
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rcx, -102
cmovnbe ax, si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
xor esi, ecx
cmovnp ecx, ecx
sbb ebx, edx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovp eax, ebx
inc dx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
cmp al, 19
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
bts eax, 209
bt esi, edi
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
sbb cl, -104
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
movzx cx, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
xchg edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
sbb al, -62
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
adc al, al
add dl, -99 # instrumentation
not ecx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
bts ebx, 22
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
cmovb edx, edx
btc cx, 240
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
test cl, bl
sub cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
