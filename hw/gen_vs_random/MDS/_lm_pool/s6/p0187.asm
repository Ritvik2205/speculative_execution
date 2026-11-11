.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
xor cx, -18
and sil, al
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor bl, al
jmp .bb_0.1
.bb_0.1:
or rsi, 76
test esi, 1857129931
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
