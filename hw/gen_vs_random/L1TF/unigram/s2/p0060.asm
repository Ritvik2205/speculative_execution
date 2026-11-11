.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
not cl
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and sil, sil
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
sbb rsi, 60
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and bl, bl
test dx, 44
add cl, -94 # instrumentation
setnb sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
