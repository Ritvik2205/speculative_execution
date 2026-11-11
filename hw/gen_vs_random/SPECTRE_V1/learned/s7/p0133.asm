.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 47
lea eax, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
xchg dl, bl
test al, -99
cmp sil, dl
and dl, -92
add al, 18
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 34
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
