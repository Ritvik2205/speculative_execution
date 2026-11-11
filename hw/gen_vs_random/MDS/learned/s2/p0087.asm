.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
btc di, 164
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test ecx, -1843375753
xor al, bl
xor rdi, -9
or ax, -4210
test bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
or rax, 1461812833
test ebx, -2015966884
or cl, 119
and ax, 339
btc si, 99
bt dx, cx
test bl, -9
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
