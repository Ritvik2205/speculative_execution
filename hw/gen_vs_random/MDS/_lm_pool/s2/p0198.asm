.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
xor dil, 81
and bl, cl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor dil, -5
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test dil, -80
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
