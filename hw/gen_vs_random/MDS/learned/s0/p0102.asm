.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and cl, -111
xor sil, 27
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test al, -81
and dl, -73
or sil, bl
and ecx, -104
or rax, 1020005579
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
