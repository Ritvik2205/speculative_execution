.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, sil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
test al, 84
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg eax, edi
jb .bb_0.3
jmp .exit_0
.bb_0.3:
lea di, qword ptr [rsi + rdx + 53]
add ax, 6656
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
sub cl, -21
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
