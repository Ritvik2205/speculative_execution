.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
or al, bl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
bt cx, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
xor cl, bl
btc dx, cx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
test edi, -1252846009
and cl, dl
and cl, al
jmp .bb_0.1
.bb_0.1:
and dl, sil
or cl, al
test eax, -675944960
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
