.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, ax
test cl, 101
or al, bl
and sil, dil
test al, sil
or al, sil
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or dil, -41
cmovle dx, ax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
bts edx, 189
cmovnbe rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
