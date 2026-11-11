.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -113
xor dil, dl
or al, dl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
test sil, -55
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
or al, 24
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
or al, -78
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 53
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
