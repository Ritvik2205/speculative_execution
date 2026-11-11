.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -1
movzx cx, bl
sbb cl, -11
setnl al
mul rcx
cmovo rbx, rcx
and sil, sil
xor rsi, 83
bswap rsi
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 94
mul sil
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], 81
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
add cl, 39 # instrumentation
setle sil
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
