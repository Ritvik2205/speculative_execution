.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
or al, bl
test al, -32
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and al, bl
jmp .bb_0.1
.bb_0.1:
or ecx, edx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
bts edi, 43
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
jmp .bb_0.4
.bb_0.4:
sub dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
