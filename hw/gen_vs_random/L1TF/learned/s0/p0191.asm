.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 43
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
xchg rbx, rcx
and dl, bl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
lea eax, qword ptr [rdi]
adc dil, 120
and al, dl
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
