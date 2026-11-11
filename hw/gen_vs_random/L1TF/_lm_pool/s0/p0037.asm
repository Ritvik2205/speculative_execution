.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
or bl, al
lea rsi, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
lea si, qword ptr [rdx + rcx + 13]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
movzx edx, bx
test al, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
