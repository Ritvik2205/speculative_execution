.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
setno dl
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
test si, 63
mul al
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
sbb dil, 95
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
sets bl
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
add cl, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
bt cx, 86
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
