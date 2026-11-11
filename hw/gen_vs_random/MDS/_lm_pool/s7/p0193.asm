.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor cl, 55
or al, -75
xor bl, -61
test al, 22
xor dl, -43
test cl, -123
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and eax, -574348013
cmovnp rbx, rdx
or sil, -78
test bl, 65
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
cmovle rdx, rcx
and edi, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
