.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
test al, -82
or al, dil
not al
test eax, 899472326
cmovb eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
add dl, al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 72
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
