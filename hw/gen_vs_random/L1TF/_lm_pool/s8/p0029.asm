.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 64
sbb bl, -88
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
cmp bx, -21
lea si, qword ptr [rdi + rdx + 65]
bt ebx, esi
or dl, -67
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sub rcx, -90
or dl, al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
