.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
sub dil, -70
and sil, 93
or sil, -44
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and cx, -79
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
setno dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 8
cmovnbe si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
