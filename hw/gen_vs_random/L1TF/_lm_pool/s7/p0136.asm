.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
lea ebx, qword ptr [rcx + rcx + 44]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
sub al, -47
test al, -82
sbb al, bl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 89
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
test bl, dil
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
or al, -57
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
