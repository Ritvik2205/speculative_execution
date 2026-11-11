.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
adc ecx, 82
setb al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add cl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and bl, dil
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
add dil, dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rax + rdx]
and bl, dl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
