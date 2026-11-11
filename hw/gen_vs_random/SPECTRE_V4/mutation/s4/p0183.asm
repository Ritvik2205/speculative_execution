.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, al
cmovb edx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
cmovb di, di
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sbb cl, -104
imul dl
btc cx, 240
cmovnp ecx, ecx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
cmovnbe ax, si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
xor esi, ecx
inc dx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
bts ebx, 22
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
sbb ebx, edx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
bts eax, 209
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
xchg edx, ecx
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmp al, 19
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rcx, -102
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
sub cl, cl
sub dl, cl
cmovp eax, ebx
and bl, 26
add dl, -99 # instrumentation
not ecx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
bt esi, edi
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
test cl, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
movzx cx, dl
xor ax, di
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
