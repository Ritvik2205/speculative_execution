.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, dl
imul dl
and rcx, -102
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
cmovb di, di
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
add dl, -99 # instrumentation
not ecx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
xor esi, ecx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
cmovp eax, ebx
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
bt esi, edi
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
btc cx, 240
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xchg edx, ecx
adc al, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
bts ebx, 22
sbb al, -47
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovb edx, edx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmovnp ecx, ecx
sbb cl, 20
and bl, 26
inc dx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
sub dl, cl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmp al, 81
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
sub cl, cl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
test cl, bl
cmovnbe ax, si
sbb ebx, edx
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
bts eax, 209
xor ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
