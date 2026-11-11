.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
add al, -46
adc ax, 87
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmovns rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
sub al, bl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
jmp .bb_0.4
.bb_0.4:
lea dx, qword ptr [rbx]
sub dl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
