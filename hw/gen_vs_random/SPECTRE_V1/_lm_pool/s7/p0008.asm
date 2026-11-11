.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 41
add dil, 72
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
test al, 34
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
test cl, sil
jmp .bb_0.1
.bb_0.1:
add sil, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and dl, -92
sbb eax, 100
lea cx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
