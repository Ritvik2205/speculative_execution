.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, sil
xchg dil, sil
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
or rsi, rcx
xchg bx, cx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
mov rsi, 70
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
mov bl, al
xor bx, di
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
dec dil
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
