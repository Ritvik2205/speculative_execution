.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
cmovns cx, bx
cmp rdi, 99
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
add al, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
sub cl, -49
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
