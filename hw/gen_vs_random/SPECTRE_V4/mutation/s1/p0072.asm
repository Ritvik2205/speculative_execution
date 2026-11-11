.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb di, di
test cl, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
cmovnbe ax, si
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
xor esi, ecx
bts eax, 209
sbb al, 32
inc dx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
cmovp eax, ebx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bts ebx, 22
adc al, al
xchg edx, ecx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
cmovnp ecx, ecx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
cmovb edx, edx
sub dl, cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
imul dl
sub cl, cl
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
cmp al, 70
bt esi, edi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
sbb ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rcx, -102
and bl, -63
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
xor ax, di
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
add dl, -99 # instrumentation
not ecx
movzx cx, dl
btc cx, 240
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
sbb cl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
