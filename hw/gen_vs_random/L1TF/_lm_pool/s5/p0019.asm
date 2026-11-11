.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
imul al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor al, 16
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rsi]
xchg sil, bl
lea rax, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
lea cx, qword ptr [rax + rdi]
lea rsi, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
