.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
sub esi, -89
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
and dil, -82
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
lea rdi, qword ptr [rsi + rcx + 25300]
lea esi, qword ptr [rbx + rdi + 29710]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
seto bl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
xchg rbx, rbx
add ax, -10746
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
