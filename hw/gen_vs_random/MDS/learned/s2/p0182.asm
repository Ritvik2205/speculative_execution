.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 31969
and ax, 19740
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and bl, bl
not sil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
test al, dil
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 68
and rax, 452940266
jmp .bb_0.1
.bb_0.1:
test cl, 101
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and al, -103
or cl, 7
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
