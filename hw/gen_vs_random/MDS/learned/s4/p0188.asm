.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 100
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 86
and bx, 40
and dl, dl
test sil, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and sil, al
xor rcx, -2
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 64
or cl, 7
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and edi, 23
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
