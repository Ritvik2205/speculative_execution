.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
test dl, -85
xor al, dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 32
test al, dil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
not al
and bl, sil
or ax, -20176
not bl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
