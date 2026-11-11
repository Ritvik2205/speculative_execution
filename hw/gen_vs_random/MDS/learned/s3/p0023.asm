.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
or ecx, eax
bts rcx, 11
or dl, -21
jmp .bb_0.1
.bb_0.1:
xor dx, 36
and cl, -111
xor ax, -12492
or dl, -31
bts eax, 222
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and al, 87
xor ax, 23633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
