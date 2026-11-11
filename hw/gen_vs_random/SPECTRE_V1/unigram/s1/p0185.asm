.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
add dl, -127 # instrumentation
setp dil
add edx, 81
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rsi
lea rax, qword ptr [rdi]
add bl, -95
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rsi + rax]
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and dl, al
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
setb dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
add cl, 11 # instrumentation
cmovns ecx, edi
bt esi, 64
test edi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
