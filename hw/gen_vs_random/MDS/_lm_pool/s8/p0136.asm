.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or al, -78
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
xor dil, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or cl, 30
and sil, sil
test rax, 1949278494
and dx, 3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
xor rdx, -59
test esi, 1857129931
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
