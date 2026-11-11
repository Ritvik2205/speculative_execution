.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
test al, -99
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
sub al, dl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
lea rax, qword ptr [rcx + rbx + 51]
sbb ebx, 53
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
sbb cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
