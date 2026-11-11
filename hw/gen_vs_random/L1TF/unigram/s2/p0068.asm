.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ecx, cx
add al, 39 # instrumentation
cmovnb bx, si
add bl, 119 # instrumentation
cmovle di, cx
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
test ax, cx
xchg edx, esi
xor al, al
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
