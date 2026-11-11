.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
or al, -57
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
xor al, al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
btc si, dx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
