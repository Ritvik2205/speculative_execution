.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 17
lea bx, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
sbb bx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
lea dx, qword ptr [rsi + rsi + 6302]
adc si, 18
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
jmp .bb_0.1
.bb_0.1:
imul si, ax
lea rdi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
cmp rdx, rsi
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
lea rcx, qword ptr [rcx + rdi + 37]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
