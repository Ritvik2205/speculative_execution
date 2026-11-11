.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -121
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 38
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
test cl, sil
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
dec rdi
xchg esi, ebx
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 27
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
setnl bl
or dl, 43
adc bx, 38
add al, -125 # instrumentation
cmovb ebx, esi
cmovno rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
