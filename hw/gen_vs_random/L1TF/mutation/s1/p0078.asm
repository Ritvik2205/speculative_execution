.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
test rdi, rsi
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
inc cl
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
lea rcx, qword ptr [rax]
sbb al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
