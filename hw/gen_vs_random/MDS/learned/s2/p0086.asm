.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or dil, dil
or dl, -21
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
xor rdx, -59
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or rdi, 21
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test rax, 1949278494
or cl, dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
