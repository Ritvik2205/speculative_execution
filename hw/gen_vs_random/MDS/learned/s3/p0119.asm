.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 79
and cl, sil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 52
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
xor al, -19
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
test rcx, -613256812
test dil, -51
and ax, 31082
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor al, -19
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
test ax, 6779
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
