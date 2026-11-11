.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 66
cmovs cx, ax
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
inc esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
cmovnz cx, dx
sbb ax, si
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
lea rdx, qword ptr [rdx + rax]
adc rbx, 22
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
