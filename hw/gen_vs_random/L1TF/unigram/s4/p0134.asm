.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
inc esi
btc cx, cx
setz sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
cmovnb rdx, rdi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
cmovo di, ax
sbb sil, sil
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
