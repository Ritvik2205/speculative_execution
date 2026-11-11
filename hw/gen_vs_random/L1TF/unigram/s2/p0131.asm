.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdi + rax + 22]
cmovb edi, ecx
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
or cl, 94
btc ax, 36
xchg al, dl
mul rax
cmovb rcx, rdx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt eax, esi
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
cmovnbe cx, dx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
