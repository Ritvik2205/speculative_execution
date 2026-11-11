.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
bts rdx, 200
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
test cl, -86
not dil
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
test cl, sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test bl, -9
test dl, 9
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
xor rax, -1499464454
and dil, bl
test eax, -675944960
cmp dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
