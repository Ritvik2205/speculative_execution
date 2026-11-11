.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 94
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 35
test dl, sil
and bx, 93
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
btc ax, 70
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
xor al, 9
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
test al, 91
test rdi, 52
or dx, 125
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
