.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sub ax, si
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
xchg rax, rsi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
jmp .bb_0.2
.bb_0.2:
and ebx, -52
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
