.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 87
cmp eax, -240917296
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, -14
sbb dl, cl
xchg dl, al
mov bx, 3
or di, -85
xchg dl, bl
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
