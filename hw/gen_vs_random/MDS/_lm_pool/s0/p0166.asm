.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and al, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
or rdx, -109
xor bl, 67
xor sil, dl
test bx, di
or ax, -11837
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test eax, 1287331633
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
