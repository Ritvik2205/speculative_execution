.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
cmp esi, 110
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 26
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor eax, -885407671
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cmp cl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
