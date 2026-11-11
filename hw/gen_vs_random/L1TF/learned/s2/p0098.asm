.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 66
cmovno rbx, rax
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 56
add bl, dl
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
adc dil, 120
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rbx]
dec al
xor eax, 965442135
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
