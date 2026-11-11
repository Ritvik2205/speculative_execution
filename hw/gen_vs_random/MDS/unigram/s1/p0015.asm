.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, 130
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
or rcx, rdx
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
cmovl si, ax
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
btc dx, 67
xor cl, dl
btc di, si
or di, 93
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rbx
test dil, -80
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
