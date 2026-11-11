.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
test dil, dil
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
or di, 0b1000000000000000 # instrumentation
bsf bx, di
cmovp rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
lea rax, qword ptr [rcx + rbx]
add bl, -77 # instrumentation
cmovns bx, ax
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
movzx edx, dx
and rax, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
