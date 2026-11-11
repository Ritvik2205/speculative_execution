.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 32
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
lea ecx, qword ptr [rcx + rsi + 65505]
xor dx, 98
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
