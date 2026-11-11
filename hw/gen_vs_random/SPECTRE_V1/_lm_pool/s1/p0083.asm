.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
mov al, bl
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
add bl, bl
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
lea ecx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
