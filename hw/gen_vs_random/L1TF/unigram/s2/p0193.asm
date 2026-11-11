.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
add cl, dil
xor sil, dil
lea dx, qword ptr [rbx + rbx + 64]
or edx, ebx
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
btr bx, 104
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
or dl, sil
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], di
bts rsi, rdi
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 55
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
