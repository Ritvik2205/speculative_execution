.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, dx
or al, 37
jmp .bb_0.1
.bb_0.1:
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
bt di, cx
jmp .bb_0.2
.bb_0.2:
xor al, -89
or rbx, -77
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
or cl, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
