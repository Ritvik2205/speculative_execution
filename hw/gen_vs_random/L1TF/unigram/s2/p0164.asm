.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, dil
lea ecx, qword ptr [rdx + rcx]
test rcx, 88
add dl, 47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
add cl, -20
setz al
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
or al, -5
add sil, -61
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
or cl, 105
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
