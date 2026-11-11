.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
imul ecx, esi
setb dl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 72
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 50
setnle sil
add bl, 107 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 93
jmp .bb_0.1
.bb_0.1:
sub cl, 86
bt rsi, 59
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 8
mov al, -101
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
add bl, 10 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
