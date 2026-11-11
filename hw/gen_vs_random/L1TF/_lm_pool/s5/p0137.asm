.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
xor cl, dl
sub dl, dil
sub bl, 15
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
lea eax, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmp ax, -21455
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
add al, al
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
