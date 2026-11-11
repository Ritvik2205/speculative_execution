.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
lea ebx, qword ptr [rdi + rdi + 95]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
adc cx, dx
add bl, -64 # instrumentation
cmovnle edx, eax
add bx, ax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
movsx esi, si
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
add dl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
