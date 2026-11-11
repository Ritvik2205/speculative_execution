.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
or cx, 37
lea rax, qword ptr [rdx]
test sil, 29
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
sub dl, bl
cmp cx, 66
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
