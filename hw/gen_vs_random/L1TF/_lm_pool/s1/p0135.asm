.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 88
and cl, sil
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
lea di, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
xor cl, dl
jmp .bb_0.1
.bb_0.1:
and dil, 32 # instrumentation
cmovnbe edi, ecx
add edx, 56
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
