.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
or dl, 51
and cx, -8
bts rdi, rsi
test rdx, 76
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor rsi, -117
and rax, -2058103810
and cl, 79
xor rcx, -2
not dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
