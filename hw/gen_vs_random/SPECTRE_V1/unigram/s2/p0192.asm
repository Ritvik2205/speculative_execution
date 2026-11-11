.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 54
lea rsi, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
movzx cx, dl
and dl, dl
cmovnbe ax, di
mov dil, dil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
add al, 28 # instrumentation
setnz al
xor cx, 37
add cl, -29 # instrumentation
lea rax, qword ptr [rsi + rsi + 9]
cmp sil, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
setnbe dil
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
sub edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
