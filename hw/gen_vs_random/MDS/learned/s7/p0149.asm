.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
and edi, 23
xor al, 99
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and cl, cl
and al, 49
or dil, -41
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or rax, -689609688
and cx, -8
xor cl, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 76
test esi, 1857129931
bt cx, di
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
