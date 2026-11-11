.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 48
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and cl, -19
xor ax, -6793
and ax, -122
and rdx, 23
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or al, 37
xor dil, 8
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
or sil, -49
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
