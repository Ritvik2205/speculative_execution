.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, dil
sub bl, -6
cmovnbe rcx, rax
cmp rdx, -19
add bl, 57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
sub bl, -6
jb .bb_0.1
jmp .exit_0
.bb_0.1:
inc ax
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
mul bl
mov sil, cl
add bl, dl
sub rax, rbx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 29
add bl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
movsx esi, sil
cmp cl, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
