.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov al, dl
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rsi
and bl, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, -111
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
