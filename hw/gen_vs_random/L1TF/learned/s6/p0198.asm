.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, cx
test sil, 29
adc bx, 30
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
sbb sil, 19
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and cx, -79
add al, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 35
sbb dil, dl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
