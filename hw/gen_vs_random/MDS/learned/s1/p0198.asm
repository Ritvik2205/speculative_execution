.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
or al, -58
not dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
xor bl, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test dil, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
test dl, -95
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
