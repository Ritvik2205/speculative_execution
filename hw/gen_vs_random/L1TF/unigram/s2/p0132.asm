.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
cmp dil, bl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 64
btc di, 237
bt edx, 34
add cl, -34 # instrumentation
setl dl
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
sub cl, 32
add al, 71 # instrumentation
setp sil
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 34
and edx, ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
lea bx, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
