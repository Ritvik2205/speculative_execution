.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 2
xor dl, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
dec ebx
or bl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
xor edx, 100
bts eax, 232
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
