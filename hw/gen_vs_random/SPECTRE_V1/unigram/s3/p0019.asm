.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rdx + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
and dl, al
cmovns rdx, rsi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -47
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and si, 53
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
or cx, 62
cmovle dx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
bts di, 144
cmovl ecx, eax
add al, 41 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
sbb rcx, 63
adc di, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
