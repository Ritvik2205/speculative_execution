.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
sbb bl, -88
cmp dil, 1
add cl, bl
lea edi, qword ptr [rdx + rbx]
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
