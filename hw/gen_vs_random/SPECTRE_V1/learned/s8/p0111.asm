.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
test al, 48
or cl, dl
test bl, -8
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
lea dx, qword ptr [rsi + rax + 99]
jmp .bb_0.3
.bb_0.3:
or eax, -1641258390
sbb bl, cl
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
