.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
or cl, dl
xor al, 99
jmp .bb_0.1
.bb_0.1:
test eax, 298249463
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 35
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
jmp .bb_0.5
.bb_0.5:
test al, 127
and dl, dil
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
