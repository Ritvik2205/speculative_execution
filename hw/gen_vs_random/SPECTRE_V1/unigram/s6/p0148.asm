.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
lea ax, qword ptr [rsi + rdx + 49]
xor al, dil
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
xor cx, 73
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
sub bl, cl
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
