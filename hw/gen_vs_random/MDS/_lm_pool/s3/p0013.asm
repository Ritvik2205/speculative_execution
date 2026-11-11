.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and si, -121
or bl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
xor sil, 110
and bl, 68
or al, -61
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and al, 35
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
test cl, 73
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
