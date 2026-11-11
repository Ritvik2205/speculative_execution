.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, cx
or al, -24
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor dl, bl
and dl, cl
and dl, cl
test dl, -95
or bl, 13
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
btc ax, 61
and bl, bl
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
