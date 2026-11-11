.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
test sil, 17
test edx, -1561252782
xor bx, 72
test sil, 41
jmp .bb_0.1
.bb_0.1:
test al, sil
and al, al
jmp .bb_0.2
.bb_0.2:
test bl, -14
or sil, -49
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or al, -24
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
