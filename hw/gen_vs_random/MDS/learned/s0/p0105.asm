.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
test dil, cl
and dl, dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
xor cl, al
jmp .bb_0.1
.bb_0.1:
or al, bl
and esi, 80
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
