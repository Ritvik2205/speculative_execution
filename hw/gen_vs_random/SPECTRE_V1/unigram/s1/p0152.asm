.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
adc bl, bl
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
setnp cl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 9
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
xor si, 23
and sil, al
sub edi, 8
add cl, 45 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
