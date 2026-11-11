.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
xor al, 8
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdi, 38
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
or sil, bl
xor bl, dl
and rax, 4
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
xor dil, bl
or cl, 119
or sil, dl
jmp .bb_0.2
.bb_0.2:
xor rsi, -117
xor cl, 83
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
