.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
test dil, -51
jmp .bb_0.2
.bb_0.2:
bts rax, 77
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and ax, -16061
test dil, al
or sil, bl
and dl, -73
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
