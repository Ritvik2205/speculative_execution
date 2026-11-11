.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 56
or al, sil
or eax, -927349615
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
jmp .bb_0.1
.bb_0.1:
xor al, 122
jmp .bb_0.2
.bb_0.2:
test bl, sil
and rax, 79
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
