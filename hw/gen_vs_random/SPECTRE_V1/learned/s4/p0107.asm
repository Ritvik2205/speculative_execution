.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
test ax, 636
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
sub dil, -32
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
cmovno ax, di
sbb bl, -41
lea cx, qword ptr [rdi]
lea cx, qword ptr [rbx + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
setno al
or si, 0b1000000000000000 # instrumentation
bsf cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
