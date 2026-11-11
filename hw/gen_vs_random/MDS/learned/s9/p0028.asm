.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or al, 30
xor dl, 34
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or cl, 6
xor sil, 27
and al, -114
test cl, -18
and cx, -2
test sil, al
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
test al, sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
