.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or al, 24
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
xor rbx, 89
and al, -103
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
and rbx, 65
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test ecx, -1843375753
or rdi, 21
and rax, -636362975
and cl, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 78
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
