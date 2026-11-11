.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, al
lea rbx, qword ptr [rdx + rcx + 3]
bt rdx, 32
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 46
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sets sil
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
mul al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -97
and bx, -118
xor bl, -38
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
cmovl ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
