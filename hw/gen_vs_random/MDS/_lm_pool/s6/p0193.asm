.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
and rax, 41
test dil, sil
or rax, 302048971
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or al, 74
xor cx, -18
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor esi, 79
or sil, -49
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
