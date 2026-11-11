.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
not sil
cmovle rax, rsi
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
add bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
btr esi, 37
lea dx, qword ptr [rdi + rsi + 91]
add bl, 111 # instrumentation
cmovs rdx, rdx
cmovnle rdi, rdi
sub rcx, -90
jmp .bb_0.1
.bb_0.1:
cmp dx, ax
seto al
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
xor al, al
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
