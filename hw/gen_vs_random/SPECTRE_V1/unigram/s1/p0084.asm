.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 115
add cl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 39
xor rdx, 86
test dl, -7
seto cl
test al, 84
movsx rdi, cx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, al
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
mov cl, al
setno al
adc rbx, 35
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
