.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
test al, dl
or dil, -78
test al, 66
xor bl, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
or al, 25
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and ax, 29207
xor dil, -70
and eax, -85386306
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
