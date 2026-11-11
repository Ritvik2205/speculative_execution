.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
add al, -44
sub al, cl
bt eax, 78
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
lea ax, qword ptr [rcx + rbx + 26263]
and dl, -111
and al, dl
or al, 19
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
