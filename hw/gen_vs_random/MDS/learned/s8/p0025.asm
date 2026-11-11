.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
or dl, sil
xor al, 122
or dil, -76
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
xor bl, al
and cl, 79
and dil, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
bt rax, 44
and cl, dl
bts rsi, rbx
or dl, -8
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
xor rdi, -9
xor rax, -1499464454
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
