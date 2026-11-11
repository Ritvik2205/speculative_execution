.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
cmovnle edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
bt rdi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and al, -38 # instrumentation
cmovp rax, rdx
xor eax, 1170472196
cmovns di, bx
or rax, -285849275
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and al, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 82
test ebx, 245771113
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 35
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
test bl, bl
cmovs rdx, rdi
cmovnle edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
