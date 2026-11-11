.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
sub rcx, 13
cmp dil, cl
and rax, -273199823
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
sub rax, -1628299544
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sbb bl, cl
sbb eax, -108
cmp edi, 4
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
