.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
cmp rdx, -19
setp cl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
xchg al, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
cmovnz bx, ax
movzx cx, dil
adc rcx, 43
cmp rax, rdi
lea di, qword ptr [rcx + rdi + 1965]
bt edx, ebx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
