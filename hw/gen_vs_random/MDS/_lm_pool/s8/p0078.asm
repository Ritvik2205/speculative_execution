.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
xor dil, 81
btr eax, ebx
btr ax, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and eax, 366961170
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 51
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and eax, 366961170
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
