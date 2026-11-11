.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 29
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
or al, -48
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
jmp .bb_0.2
.bb_0.2:
test al, -104
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
jmp .bb_0.3
.bb_0.3:
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
