.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
test cl, -62
test cl, -62
xor dl, dl
and sil, 11
test al, -99
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, 33
lea esi, qword ptr [rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
setnle dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
