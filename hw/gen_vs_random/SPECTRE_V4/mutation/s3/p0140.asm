.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 22
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
sbb al, 32
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
sbb ebx, edx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
inc dx
adc al, al
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
cmovnp ecx, ecx
imul dl
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rcx, -102
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
btc cx, 240
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
bt esi, edi
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
xor esi, ecx
xor ax, di
bts eax, 209
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb cl, 20
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
cmovb edx, edx
xchg edx, ecx
add dl, -99 # instrumentation
not ecx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
test cl, bl
cmp al, 70
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
cmovp eax, ebx
and bl, 26
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
movzx cx, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
sub dl, cl
cmovnbe ax, si
cmovb di, di
sub cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
