.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
test cl, dl
xor sil, 27
test ax, 6779
test cl, 0
jmp .bb_0.1
.bb_0.1:
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
or bl, al
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and cl, cl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
