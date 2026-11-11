.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rax, -2039117613
or dl, cl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
btr dx, cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
btc ebx, 149
jmp .bb_0.1
.bb_0.1:
test dl, -95
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
xor cl, dil
or cl, 30
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
