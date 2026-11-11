.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and bx, 32
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
xor bl, dil
and dil, dil
xor dl, -19
or rax, -141551502
xor dl, bl
jmp .bb_0.1
.bb_0.1:
or al, bl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
bt dx, cx
and al, 49
btr eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
bt dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
