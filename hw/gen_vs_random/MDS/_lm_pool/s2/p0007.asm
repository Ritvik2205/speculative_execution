.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and sil, -9
test dil, bl
bts rcx, rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and bl, bl
and dil, 125
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
test esi, 425331143
test eax, 343548072
and rax, 41
and bl, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
