.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
test cl, -123
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
test al, dil
xor sil, al
jmp .bb_0.1
.bb_0.1:
test al, bl
and dil, dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 50
xor cl, 55
and edi, 23
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
