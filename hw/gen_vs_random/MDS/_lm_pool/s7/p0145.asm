.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test bl, 65
or dil, -78
test al, -7
xor cl, dl
and edi, 23
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
bt ecx, ebx
or rdi, -11
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and bl, bl
or al, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor cl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
