.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
add cl, -127
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
test al, 59
sub dil, bl
test rdx, 1657596343
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
