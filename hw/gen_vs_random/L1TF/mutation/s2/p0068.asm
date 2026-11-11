.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
inc al
sbb ax, -4845
add bl, al
add cl, -36
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
bt edi, ecx
add al, -1 # instrumentation
nop
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and cx, 127
cmovnl rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add al, -84 # instrumentation
setno bl
inc rcx
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
add cl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
mov edi, esi
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
adc al, -61
bt rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
