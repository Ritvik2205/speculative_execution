.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and bl, 68
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
bt cx, ax
test sil, 41
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
xor dx, 22
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
xor ax, -1005
test al, dl
test al, bl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
