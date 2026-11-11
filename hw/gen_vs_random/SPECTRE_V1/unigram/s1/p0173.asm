.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
xor cl, 114
dec dil
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 54
sub rax, 1451608022
bt ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rbx]
lea bx, qword ptr [rsi + rax + 4]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 59
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
test dil, dl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
