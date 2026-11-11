.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 30
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 55
mul dil
setno cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 74
and bl, bl
cmovnbe bx, dx
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
lea rcx, qword ptr [rdi + rsi]
lea rdx, qword ptr [rdx]
add dl, 116 # instrumentation
cmovbe rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
