.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test al, dil
and dil, -62
or al, -24
and dil, bl
or al, 24
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
