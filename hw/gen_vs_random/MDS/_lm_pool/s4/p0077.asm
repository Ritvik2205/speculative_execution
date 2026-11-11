.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test al, 127
xor sil, 27
xor esi, 93
or al, -75
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
test rax, 1214712583
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
xor ax, -6793
and sil, 74
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
