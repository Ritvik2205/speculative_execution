.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rax, rax
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and bl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
xor dil, dl
bt cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 54
bt ebx, edi
jmp .bb_0.1
.bb_0.1:
xor edi, 74
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
or al, bl
and cl, 85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and dl, -73 # instrumentation
cmovns rax, rcx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 93
and bl, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
bts dx, 167
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
xor rcx, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
