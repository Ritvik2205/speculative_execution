.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rcx, 61
add al, 64 # instrumentation
cmovnl rcx, rdx
add dl, al
cmovb di, cx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
setnl al
mov ebx, esi
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
dec sil
lea edi, qword ptr [rbx]
cmovp rsi, rdx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
xchg bx, dx
and rsi, 98
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
