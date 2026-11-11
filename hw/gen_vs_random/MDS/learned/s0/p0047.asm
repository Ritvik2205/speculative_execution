.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 122
and dl, -73
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and dil, sil
and al, -55
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
and al, -8
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
test rbx, 94
xor rax, -270810088
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
