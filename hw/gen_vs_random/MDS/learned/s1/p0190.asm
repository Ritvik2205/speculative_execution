.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
or bl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and edx, -44
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
xor bl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
or rdx, -48
or dil, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
