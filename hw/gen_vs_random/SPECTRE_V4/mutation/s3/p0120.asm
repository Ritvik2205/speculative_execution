.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -62
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and bl, 26
cmovnp ecx, ecx
bts eax, 209
btc cx, 240
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, -102
cmovnbe ax, si
adc al, al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
xor ax, di
cmovp eax, ebx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
cmovb di, di
inc dx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
xor esi, ecx
bt esi, edi
sbb cl, 19
bts ebx, 22
cmovb edx, edx
sbb ebx, edx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
add dl, -99 # instrumentation
not ecx
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
test cl, bl
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
movzx cx, dl
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
cmp al, 81
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
imul dl
sub cl, cl
xchg edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
