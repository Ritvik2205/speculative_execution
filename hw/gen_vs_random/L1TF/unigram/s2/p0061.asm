.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
btr edi, esi
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
setno dl
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 58
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 64
sbb rax, -1477844571
jmp .bb_0.1
.bb_0.1:
add dl, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
sbb rsi, 37
cmovnb rcx, rcx
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
