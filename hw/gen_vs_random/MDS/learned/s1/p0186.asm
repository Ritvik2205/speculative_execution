.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 69
or sil, -78
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and ax, 5001
and bl, cl
test cl, al
test al, dil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
bt bx, si
or sil, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
