.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
test rcx, -613256812
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
xor bl, cl
xor al, bl
jmp .bb_0.1
.bb_0.1:
test cl, bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
test rdi, 7
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
