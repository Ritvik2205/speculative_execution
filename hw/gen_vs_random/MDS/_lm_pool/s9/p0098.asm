.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
or sil, -78
and al, al
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
or bl, sil
and al, al
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
xor dl, 8
and dl, -73
and cl, -19
or al, 30
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
xor cl, -13
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
