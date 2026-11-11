.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
xor ax, -23364
and al, 84
btc dx, 67
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
or al, 54
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor di, -83
bt di, si
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
