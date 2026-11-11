.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz di, bx
cmovnb bx, di
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
or cl, bl
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
or sil, -8
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
cmovnbe ax, cx
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
test rax, 1732677821
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
cmovl rsi, rcx
bts esi, 70
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 73
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
