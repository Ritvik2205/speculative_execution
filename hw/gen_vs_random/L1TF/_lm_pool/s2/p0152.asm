.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
xor sil, bl
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rax + rdx + 77]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
xor dil, dl
sbb rsi, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
