.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
lea dx, qword ptr [rbx]
sub rax, -1628299544
xor dl, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
or eax, -1641258390
lea edi, qword ptr [rsi + rbx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add cl, al
test sil, 13
cmp sil, 25
test ecx, eax
sub rbx, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
