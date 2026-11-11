.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, bx
test al, 66
xor ax, 23633
test al, -81
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor dil, 124
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and al, bl
and dx, 60
or al, -22
xor rsi, -117
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test rax, 1949278494
xor cl, 83
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
