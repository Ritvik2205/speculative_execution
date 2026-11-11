.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
lea si, qword ptr [rsi + rbx]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and al, cl
test rcx, rdi
and dl, 59
test dil, -126
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
