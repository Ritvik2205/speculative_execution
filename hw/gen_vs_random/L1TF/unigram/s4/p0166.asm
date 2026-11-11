.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
cmp ax, 24210
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdi, 98
or cx, 68
cmovns cx, dx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
xor dl, al
jmp .bb_0.1
.bb_0.1:
cmovb ebx, ebx
add bl, 3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
lea rcx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
inc rcx
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
