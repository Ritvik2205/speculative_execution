.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
cmp edx, 99
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
mov al, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 62
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 44
or al, -48
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
add ax, -24961
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
