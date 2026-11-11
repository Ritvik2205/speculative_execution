.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
lea rdx, qword ptr [rax + rbx + 83]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
lea ebx, qword ptr [rcx]
btc eax, 99
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
add cl, -127
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
