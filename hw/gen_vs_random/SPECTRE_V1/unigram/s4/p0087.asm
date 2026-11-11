.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
add bl, -95
and rcx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rcx]
sbb rdi, 57
test cl, -24
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
add edx, 36
add dl, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
sbb cl, dil
adc esi, edx
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
