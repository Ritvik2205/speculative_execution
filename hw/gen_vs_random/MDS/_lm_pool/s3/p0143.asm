.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
test al, -7
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and al, sil
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
test cl, al
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor eax, 984871847
jmp .bb_0.1
.bb_0.1:
and di, 99
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
