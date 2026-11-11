.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
or al, -61
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
or al, bl
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test eax, 1729060510
xor eax, -885380838
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 78
jmp .bb_0.2
.bb_0.2:
and sil, -56
and bl, 68
bt cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
