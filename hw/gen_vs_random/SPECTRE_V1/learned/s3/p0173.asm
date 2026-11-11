.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
test al, -99
test sil, -31
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
lea rcx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 79
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
add ax, 6980
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
lea rdx, qword ptr [rdi + rcx + 59295]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
