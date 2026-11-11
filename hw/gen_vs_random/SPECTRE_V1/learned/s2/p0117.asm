.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb cl, dl
test edx, ebx
jb .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, 90 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
cmovno edi, ecx
cmp al, al
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
bswap rdi
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rdi
add dil, 27
sbb al, -127
bt si, ax
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
add al, dl
cmovnl si, di
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
add dl, -3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
