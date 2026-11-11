.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test ecx, -1843375753
test eax, 298249463
xor cl, sil
jmp .bb_0.1
.bb_0.1:
and ebx, 17
xor eax, 2063216578
jmp .bb_0.2
.bb_0.2:
or dl, -8
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
test al, bl
or al, 74
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and si, -121
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
xor rcx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
