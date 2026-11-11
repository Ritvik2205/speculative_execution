.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 53
sbb rax, -1841833326
lea rbx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
jmp .bb_0.1
.bb_0.1:
test edi, esi
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
add bl, -37 # instrumentation
dec dil
lea bx, qword ptr [rsi + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
lea rbx, qword ptr [rax + rsi]
sbb rax, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
