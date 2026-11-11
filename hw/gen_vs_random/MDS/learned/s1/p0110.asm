.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
btc cx, 115
xor cl, -13
and al, dil
jmp .bb_0.1
.bb_0.1:
or cl, sil
xor al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
bt ax, bx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
and cl, bl
and al, 87
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
