.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and cl, dil
test rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
test al, -82
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
jmp .bb_0.3
.bb_0.3:
test rdi, rdx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
jmp .bb_0.4
.bb_0.4:
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
