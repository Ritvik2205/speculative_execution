.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
cmovb dx, cx
or al, al
test dil, -126
and al, dl
and dil, dl
xor cl, bl
bt esi, ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
