.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or bl, cl
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and dl, sil
btc si, 43
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
or bl, -52
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
xor al, 115
or ax, -7150
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
