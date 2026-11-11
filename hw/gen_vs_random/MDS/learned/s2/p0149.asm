.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
not al
jmp .bb_0.1
.bb_0.1:
xor bl, -102
and dl, -73
bts esi, 61
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test al, bl
jmp .bb_0.2
.bb_0.2:
bts rax, 77
xor al, 9
test esi, 1857129931
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
test cx, 401
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
