.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 17
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and al, -8
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor bl, cl
not dl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
bt dx, ax
or al, 16
or sil, -49
and dl, cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
