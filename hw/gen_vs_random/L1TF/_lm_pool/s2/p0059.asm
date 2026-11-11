.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
test bl, 84
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
add sil, -61
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 2
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 76
adc ecx, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
