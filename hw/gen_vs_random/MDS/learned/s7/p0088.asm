.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and dil, dil
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or dil, -78
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
test al, 91
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and al, -55
xor rsi, -117
test dil, -80
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
bts ax, dx
test rcx, -613256812
jmp .bb_0.1
.bb_0.1:
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
