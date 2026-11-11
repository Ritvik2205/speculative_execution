.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
cmovle cx, di
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
lea ax, qword ptr [rdx + rax + 36518]
and dl, -92
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdx], si
add bl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and al, bl
or ecx, 33
and rsi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
