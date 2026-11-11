.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
test bl, -114
test al, -7
test bl, sil
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
test dl, 27
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
test rcx, -613256812
or dil, -41
and rax, -978188247
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
