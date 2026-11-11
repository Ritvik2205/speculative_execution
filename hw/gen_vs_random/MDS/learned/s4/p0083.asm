.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and cl, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
test al, sil
xor cl, 15
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
btc si, cx
bt dx, si
or al, -58
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor sil, 27
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
