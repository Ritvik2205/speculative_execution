.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
xor dil, 124
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
and edx, -44
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
test dil, -80
lea rax, qword ptr [rdx]
or al, -22
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rdx, rbx
or cl, al
test al, dl
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
