.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdi + rdx]
setle sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
imul rcx
xor dil, -42
jmp .bb_0.1
.bb_0.1:
inc edx
sbb cl, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
cmp ax, -4865
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 82
sbb rax, 1183957102
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
xor al, al
bts si, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
