.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
lfence
lfence
lfence
lfence
lfence
lfence
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx] 
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx 
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx] 
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax 
and rcx, -102 
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx] 
bts ebx, 22 
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi] 
btc cx, 240 
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94 
sub cl, cl 
xor ax, di 
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx 
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx] 
test cl, bl 
cmovnp ecx, ecx 
sub dl, cl 
imul dl 
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi] 
cmovp eax, ebx 
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx] 
sbb ebx, edx 
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx] 
bts eax, 209 
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5 
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx 
and bl, -63 
adc al, al 
cmovb di, di 
sbb cl, 19 
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax] 
bt esi, edi 
add dl, -99 # instrumentation
not ecx 
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi] 
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200 
xchg edx, ecx 
movzx cx, dl 
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi] 
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx 
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi] 
cmovnbe ax, si 
sbb al, 32 
cmp al, -23 
xor esi, ecx 
cmovb edx, edx 
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx 
inc dx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
