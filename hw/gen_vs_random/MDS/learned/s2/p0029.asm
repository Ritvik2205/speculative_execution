.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and al, -8
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor al, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
test di, 96
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
xor dl, cl
and dl, -73
and ax, 13090
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
bt dx, di
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
