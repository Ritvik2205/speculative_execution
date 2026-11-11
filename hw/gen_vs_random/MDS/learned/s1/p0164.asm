.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 1640090871
or al, 74
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 23
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and cl, dl
and dl, sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test dil, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test bl, -14
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test bl, dl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
jmp .bb_0.1
.bb_0.1:
or sil, bl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test al, dil
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
