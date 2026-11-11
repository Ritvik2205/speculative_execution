.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
test rsi, 38
test rax, 1207043993
or sil, al
test cl, -113
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 30
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
cmovle bx, ax
or al, 25
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
