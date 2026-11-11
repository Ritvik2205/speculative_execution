.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and sil, 74
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
btc bx, 58
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
not dl
xor cl, 55
xor dl, sil
test sil, dil
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test cl, bl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
test rsi, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
