.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 37
cmp eax, 951020724
not dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
add bl, 68
adc al, bl
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
add sil, -61
jmp .bb_0.3
.bb_0.3:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
or ax, 11821
and cl, 87
test cx, 57
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
