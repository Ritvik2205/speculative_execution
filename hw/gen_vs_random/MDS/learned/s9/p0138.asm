.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
btr si, di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and ax, 31082
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
bt dx, ax
xor ax, -16696
and dx, 60
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 63
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test dl, 9
or ebx, -104
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
