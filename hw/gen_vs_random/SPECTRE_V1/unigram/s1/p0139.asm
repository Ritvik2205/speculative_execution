.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
lea ebx, qword ptr [rax + rax + 18654]
sub al, cl
xor dl, 71
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
test bl, -8
add al, 18
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
add al, 126 # instrumentation
cmovnl cx, ax
js .bb_0.1
jmp .exit_0
.bb_0.1:
neg ebx
seto bl
or al, bl
cwd
and bl, -65
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
