.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
cmovno di, dx
xor rdi, -80
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
lea edx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
add bl, 68
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdi + rax + 55]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
