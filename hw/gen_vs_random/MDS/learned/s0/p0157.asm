.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 15
xor sil, al
test sil, dil
and cx, -2
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
test sil, 17
test eax, -409834435
or al, -58
xor dil, bl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
test dil, -80
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
