.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
test eax, 899472326
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 15
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 61
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
xor bl, 38
jmp .bb_0.2
.bb_0.2:
movzx eax, bl
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
