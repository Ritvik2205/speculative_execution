.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or al, dil
xor dil, bl
and cl, cl
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
test eax, 424329527
test rdx, rcx
xor cl, 24
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
test al, bl
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
bt di, ax
or al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
