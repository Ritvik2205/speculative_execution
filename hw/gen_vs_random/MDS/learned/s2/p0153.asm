.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ebx
and rax, 452940266
or ecx, 49
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and cl, dil
and dl, bl
and sil, 89
test rax, -1579405415
xor al, 9
jmp .bb_0.1
.bb_0.1:
xor al, cl
or al, dil
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
bt ax, dx
bt bx, ax
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
