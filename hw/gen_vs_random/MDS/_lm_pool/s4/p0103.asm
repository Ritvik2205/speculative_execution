.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
or sil, -49
test esi, 425331143
xor dl, -19
and si, -121
or al, al
jmp .bb_0.1
.bb_0.1:
and dx, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and sil, cl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
test bl, sil
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
