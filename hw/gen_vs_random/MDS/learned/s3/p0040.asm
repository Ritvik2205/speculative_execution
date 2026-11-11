.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
or cl, 39
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test ebx, -961564216
or al, sil
xor cl, dl
jmp .bb_0.2
.bb_0.2:
xor dil, -70
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
test al, cl
test eax, 1729060510
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, -978188247
bt bx, si
xor rcx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
