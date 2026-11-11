.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
btc cx, 240
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
bts eax, 209
bt esi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
sbb cl, -104
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
bts ebx, 22
cmovb di, di
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
sbb ebx, edx
sub dl, cl
sub cl, cl
inc dx
xchg edx, ecx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
xor ax, di
cmovnp ecx, ecx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
test cl, bl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add dl, -99 # instrumentation
not ecx
cmovnbe ax, si
cmp al, -23
and rcx, -102
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and bl, 26
sbb al, -47
cmovp eax, ebx
xor esi, ecx
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovb edx, edx
movzx cx, dl
imul dl
adc al, al
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
