.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
not rax
xor al, -74
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
add sil, dl
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cdq
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
cmp sil, 25
and rcx, rcx
xor al, -42
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
