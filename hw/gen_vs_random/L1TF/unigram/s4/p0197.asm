.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
add bl, -79 # instrumentation
cmovo cx, dx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], 29
btc rdx, 152
add bl, -45 # instrumentation
cmovs rdi, rdi
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
setnz sil
jmp .bb_0.1
.bb_0.1:
cmovbe rcx, rax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
add sil, -103 # instrumentation
cmovnz si, di
and bl, dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
