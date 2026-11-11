.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, eax
cmp dl, sil
mov al, dil
add ax, 6980
mov dx, 26
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
