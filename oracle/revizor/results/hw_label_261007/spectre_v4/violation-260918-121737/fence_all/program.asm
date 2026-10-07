.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovno edx, dword ptr [r14 + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rax], bx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor ebx, dword ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnb edi, dword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb word ptr [r14 + rsi], ax 
lfence
and rcx, -102 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnbe rcx, qword ptr [r14 + rcx] 
lfence
bts ebx, 22 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rsi] 
lfence
btc cx, 240 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rsi], 94 
lfence
sub cl, cl 
lfence
xor ax, di 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
and dx, 0b111 # instrumentation
lfence
lock bts word ptr [r14 + rdi], dx 
lfence
add al, -117 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovs ecx, dword ptr [r14 + rbx] 
lfence
test cl, bl 
lfence
cmovnp ecx, ecx 
lfence
sub dl, cl 
lfence
imul dl 
lfence
add bl, 63 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov di, word ptr [r14 + rdi] 
lfence
cmovp eax, ebx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc ax, word ptr [r14 + rbx] 
lfence
sbb ebx, edx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mul byte ptr [r14 + rdx] 
lfence
bts eax, 209 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
bt word ptr [r14 + rax], 5 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
bt qword ptr [r14 + rsi], rdx 
lfence
and bl, -63 
lfence
adc al, al 
lfence
cmovb di, di 
lfence
sbb cl, 19 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mul qword ptr [r14 + rax] 
lfence
bt esi, edi 
lfence
add dl, -99 # instrumentation
lfence
not ecx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovo si, word ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rax], 541896200 
lfence
xchg edx, ecx 
lfence
movzx cx, dl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock not dword ptr [r14 + rsi] 
lfence
or ebx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr edx, ebx 
lfence
add dl, -94 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovo bx, word ptr [r14 + rsi] 
lfence
cmovnbe ax, si 
lfence
sbb al, 32 
lfence
cmp al, -23 
lfence
xor esi, ecx 
lfence
cmovb edx, edx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rax], bx 
lfence
inc dx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
