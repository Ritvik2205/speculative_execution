.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
xor eax, -603819833
and al, -68
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test al, bl
jmp .bb_0.1
.bb_0.1:
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 55
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
