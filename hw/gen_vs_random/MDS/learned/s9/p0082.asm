.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
test bl, cl
or dl, -21
test dil, -51
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 27
not bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or dl, 85
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
btc dx, 67
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
or bl, al
test al, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
