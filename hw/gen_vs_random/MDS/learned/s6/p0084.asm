.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
xor bl, -61
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test dil, -51
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
or al, cl
xor ax, -16696
and bl, cl
test dl, 48
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
xor al, sil
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
