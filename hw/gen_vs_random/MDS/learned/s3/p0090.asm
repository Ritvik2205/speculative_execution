.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor al, 8
and di, 91
or edi, -88
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
test ax, 6779
xor cl, -13
jmp .bb_0.1
.bb_0.1:
and sil, cl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
xor rcx, 71
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 97
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
xor bl, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
