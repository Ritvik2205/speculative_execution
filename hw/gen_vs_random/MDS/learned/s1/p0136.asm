.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 44
and bl, 68
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
btc bx, 104
and al, cl
test sil, al
and al, 82
test cl, 91
or al, bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
