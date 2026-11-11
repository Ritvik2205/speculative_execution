.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and cl, al
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
or bx, 54
xor eax, -885380838
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and al, cl
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
not al
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
