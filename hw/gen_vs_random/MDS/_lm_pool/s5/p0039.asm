.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -885380838
xor ax, -6793
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
test sil, dil
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 69
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and sil, -9
jmp .bb_0.3
.bb_0.3:
test cl, -113
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or dil, bl
or al, dil
xor dil, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
