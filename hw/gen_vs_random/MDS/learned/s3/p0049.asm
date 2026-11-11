.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
or cl, bl
xor al, cl
and rdi, 12
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
xor sil, dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
cmovb rax, rdx
or rax, 1020005579
bt rsi, 27
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and dil, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
