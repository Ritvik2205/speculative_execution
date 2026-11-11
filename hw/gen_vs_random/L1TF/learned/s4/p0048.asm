.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
or bl, 61
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
lea rbx, qword ptr [rdx + rax + 49]
lea rcx, qword ptr [rbx + rax + 6]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
bt eax, 10
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
add bl, 99 # instrumentation
sets bl
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
adc dx, 28
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
