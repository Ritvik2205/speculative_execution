.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
cmp al, 54
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
setnz dl
test edx, 1380346728
movzx dx, al
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 62
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 18
sbb rbx, 77
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 98
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
setnz sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
