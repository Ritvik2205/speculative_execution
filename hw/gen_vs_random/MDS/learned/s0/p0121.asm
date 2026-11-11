.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and sil, 89
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
or bl, cl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 68
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test dl, -85
test eax, 1838539683
test dil, -80
and bl, 68
or al, 74
xor dil, -5
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
