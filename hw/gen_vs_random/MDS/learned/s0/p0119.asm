.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
test al, 66
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and sil, -9
test al, cl
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
bt ebx, edi
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
