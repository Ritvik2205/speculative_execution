.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, ax
xor dil, -42
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
add al, 74
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -70
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
