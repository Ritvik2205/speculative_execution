.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 38
add dl, -86 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
sbb dil, dil
test bx, 12
add bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
cmovs rdi, rdi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 88
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
imul dl
sbb ebx, 2
setnl al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
