.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
test al, bl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test bl, 65
test dil, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
jmp .bb_0.4
.bb_0.4:
and eax, 561041355
or al, al
and rsi, 77
test al, 91
jmp .bb_0.5
.bb_0.5:
xor dl, -19
test bl, sil
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
