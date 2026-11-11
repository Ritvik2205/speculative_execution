.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
xor al, -4
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and al, 75
btc ax, di
or al, sil
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and al, dil
and bl, dl
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
