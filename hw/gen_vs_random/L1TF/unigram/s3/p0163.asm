.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 4
cmp edx, eax
add dil, dil
lea rdx, qword ptr [rcx + rsi]
mul bl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
jmp .bb_0.1
.bb_0.1:
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
mov cx, 50
xchg dx, di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
xor ecx, 81
xor bx, dx
movzx bx, al
xor al, sil
cmovz edi, esi
cmp di, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
