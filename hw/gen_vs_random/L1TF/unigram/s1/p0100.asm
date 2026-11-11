.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rsi, rcx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
sub ecx, 42
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
add bl, -54 # instrumentation
setz sil
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
test cl, 48
mov eax, 35
cmovz rbx, rdx
add al, -113 # instrumentation
mov rcx, 46
test al, 15
test rsi, rax
sbb rdx, 98
or rbx, rax
add dx, 35
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
