.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, ecx
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
adc al, al
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rcx, -102
sub cl, cl
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
bts eax, 209
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
xor ax, di
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
bts ebx, 22
inc dx
test cl, bl
sub dl, cl
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add dl, -99 # instrumentation
not ecx
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovnp ecx, ecx
sbb al, -47
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
movzx cx, dl
cmovp eax, ebx
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
bt esi, edi
imul dl
btc cx, 240
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
cmp al, 114
sbb cl, 20
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
xchg edx, ecx
cmovb di, di
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and bl, -63
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
cmovb edx, edx
cmovnbe ax, si
sbb ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
