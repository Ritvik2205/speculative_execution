.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
test al, 66
or sil, cl
and ecx, -104
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and al, -54
btr cx, ax
jmp .bb_0.1
.bb_0.1:
or cl, dl
test rax, 1000448998
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
