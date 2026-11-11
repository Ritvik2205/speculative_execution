.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 114
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cbw
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
lea eax, qword ptr [rdi + rsi + 5]
setnl sil
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
imul dil
setbe dl
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 7
add al, 98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
xor sil, 1
add dil, 27
add dl, -73 # instrumentation
setnbe dl
sub al, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
