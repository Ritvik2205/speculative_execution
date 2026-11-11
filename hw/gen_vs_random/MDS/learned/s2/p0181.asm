.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -10351
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor cx, -18
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
or ax, 30524
and cl, -19
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or cx, 39
btr edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
