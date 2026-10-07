.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
lfence
cmp qword ptr [r14 + rbx], -105 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rcx] 
lfence
add al, 72 # instrumentation
lfence
cmovle ax, dx 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rdi], -16 
lfence
mul ax 
lfence
sbb rsi, -115 
lfence
adc ebx, 117 
lfence
xor al, 56 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rdx], bl 
lfence
btc ax, dx 
lfence
cmovnz di, dx 
lfence
xor eax, 181978569 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
bt dword ptr [r14 + rdi], 1 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rsi], bx 
lfence
adc ecx, -12 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
add eax, dword ptr [r14 + rdi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rax], 4 
lfence
or dx, cx 
lfence
or dl, 0b1000 # instrumentation
lfence
and dl, 0b11111000 # instrumentation
lfence
add dl, 11 # instrumentation
lfence
cmovbe esi, edi 
lfence
inc edi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovp rdx, qword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
neg qword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rbx], cl 
lfence
and rbx, 110 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and di, 0b111 # instrumentation
lfence
bt word ptr [r14 + rax], di 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov rbx, qword ptr [r14 + rsi] 
lfence
cmovnbe rax, rcx 
lfence
add dil, 82 
lfence
cmovnle eax, edi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc eax, dword ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rbx], rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rsi], sil 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock sbb word ptr [r14 + rax], -118 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
adc si, word ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movzx rbx, word ptr [r14 + rdi] 
lfence
cmovle cx, bx 
lfence
cmovz rcx, rdx 
lfence
adc bl, dl 
lfence
and sil, al 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub word ptr [r14 + rdx], bx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
inc dword ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovo edi, dword ptr [r14 + rdx] 
lfence
xor eax, -437098167 
lfence
neg sil 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rax], 0 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rsi], 64 
lfence
add dx, -90 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
