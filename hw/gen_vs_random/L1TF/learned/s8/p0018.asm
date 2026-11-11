.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
cmovno cx, ax
cmovbe eax, ebx
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 64
cmovs si, di
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
or bl, 114
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
