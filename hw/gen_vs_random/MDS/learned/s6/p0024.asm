.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or dil, cl
xor sil, 110
btc di, bx
or dl, -97
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
bts di, cx
xor sil, -126
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
