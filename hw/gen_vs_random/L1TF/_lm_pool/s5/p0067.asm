.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
cmovno si, dx
not al
sub bl, 15
cmp al, 56
sub dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
setb cl
btr eax, ecx
jmp .bb_0.2
.bb_0.2:
add dl, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
