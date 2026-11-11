.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
btr dx, ax
test bl, al
or rax, 302048971
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
jmp .bb_0.2
.bb_0.2:
test dil, -80
and sil, al
and cx, -2
and dl, -73
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, -78
and rax, -636362975
and al, -103
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
