.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
xor al, -4
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rsi, 43
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and dil, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test si, cx
cmovo edi, ebx
not cl
or bl, -52
or rbx, -72
and rax, 627810357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
