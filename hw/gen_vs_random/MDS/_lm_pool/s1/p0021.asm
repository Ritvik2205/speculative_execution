.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
or sil, al
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
or dl, -89
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
or al, 37
or dl, al
and al, bl
test eax, -571234566
bt ax, cx
or dl, dl
jmp .bb_0.2
.bb_0.2:
or rbx, -72
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor rdi, -9
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
