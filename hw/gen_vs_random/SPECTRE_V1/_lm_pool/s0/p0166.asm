.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, al
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
sub al, cl
lea rbx, qword ptr [rdx + rax]
test al, 34
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
sub al, cl
sub bl, dl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
