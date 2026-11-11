.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
xor rbx, 89
bts rbx, rax
xor al, dil
and eax, 366961170
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and cx, -2
test bl, -14
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 28
xor cl, dil
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 23
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
test al, bl
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
