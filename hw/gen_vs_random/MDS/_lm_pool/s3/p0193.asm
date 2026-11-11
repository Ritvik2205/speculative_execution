.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 48
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test al, 91
xor ebx, 47
xor al, 115
bt ax, cx
xor cl, -13
test al, cl
xor dl, al
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
