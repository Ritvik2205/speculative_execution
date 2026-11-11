.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor cl, 24
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
test cl, -86
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or dil, -78
jmp .bb_0.2
.bb_0.2:
xor bl, cl
or al, bl
and dl, dl
jmp .bb_0.3
.bb_0.3:
or al, -17
xor rdx, -59
or rsi, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
