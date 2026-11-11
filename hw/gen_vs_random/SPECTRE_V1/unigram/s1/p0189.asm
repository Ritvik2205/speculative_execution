.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
add sil, -94 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 70
sub dl, -29
sbb rax, 1380680934
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
add dl, 56 # instrumentation
cmovns eax, edx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
bts rbx, rsi
setnp bl
bt ax, dx
add bl, -41 # instrumentation
xchg al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
