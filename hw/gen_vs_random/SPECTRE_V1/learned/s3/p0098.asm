.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
lea rax, qword ptr [rcx]
dec cx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
add sil, -68
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
lea si, qword ptr [rax + rcx + 63]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
