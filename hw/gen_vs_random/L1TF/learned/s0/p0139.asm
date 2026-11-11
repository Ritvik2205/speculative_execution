.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
bt edi, 191
mov al, dil
jmp .bb_0.2
.bb_0.2:
add cl, -84 # instrumentation
xchg rdx, rsi
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 62
add cl, al
lea esi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
