.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
cmovb cx, di
xor dl, bl
xor bl, dil
jmp .bb_0.1
.bb_0.1:
and esi, 21
jmp .bb_0.2
.bb_0.2:
sub al, 9
sub dl, 105
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
sbb eax, -403815802
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
