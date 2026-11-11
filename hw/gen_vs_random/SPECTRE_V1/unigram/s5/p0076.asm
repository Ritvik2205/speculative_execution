.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
test bx, 52
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdx
test al, -126
lea ebx, qword ptr [rbx + rcx + 19]
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
movzx cx, dil
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
xchg al, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmp rax, rdx
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
