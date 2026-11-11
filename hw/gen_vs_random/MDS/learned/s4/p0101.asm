.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
or ax, -20176
xor dil, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 75
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
or rbx, -72
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
xor al, 115
or al, 37
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
xor dil, sil
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
