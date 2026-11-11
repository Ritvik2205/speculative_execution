.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -1
cmp rax, 1189904463
lea eax, qword ptr [rdx]
cmp ebx, -33
or dil, 80
sub al, -1
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 60
add bl, dl
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], -94
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
add dil, al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
