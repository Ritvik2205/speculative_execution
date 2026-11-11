.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -89
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
test dl, 9
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
xor bl, -61
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
xor ax, -1005
or sil, bl
xor cx, -18
jmp .bb_0.1
.bb_0.1:
xor al, dl
and ax, -16061
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 68
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
