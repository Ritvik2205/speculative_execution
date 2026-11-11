.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and dx, 60
and cl, -111
and ax, 13090
xor dil, 81
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 31
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
test dl, 27
and cl, dl
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
