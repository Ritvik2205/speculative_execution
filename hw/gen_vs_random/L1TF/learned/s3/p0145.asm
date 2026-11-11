.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, -1143711697
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
cmp al, bl
add dl, dil
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 74
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
or dil, -28
xor edi, 48
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
cmovnb rdi, rdi
sub ecx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
