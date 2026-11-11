.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
test dl, 33
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 97
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
cbw
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], di
setno al
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
add cl, 40 # instrumentation
lea cx, qword ptr [rdx + rdx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 17
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 90
lea rdx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
