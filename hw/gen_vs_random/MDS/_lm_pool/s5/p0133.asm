.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
xor rcx, -2
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
xor ax, 23633
test sil, dl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
test eax, 158941032
jmp .bb_0.1
.bb_0.1:
xor al, 9
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or al, 74
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
test ax, 18697
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
