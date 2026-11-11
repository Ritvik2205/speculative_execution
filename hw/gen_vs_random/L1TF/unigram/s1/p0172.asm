.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdx, rbx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
add dl, 78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
xor bl, bl
mov sil, 44
lea rdx, qword ptr [rdx]
lea cx, qword ptr [rcx]
adc bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 35
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
lea dx, qword ptr [rdx + rax + 22206]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 37
lea rax, qword ptr [rcx + rdi + 59]
and ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
