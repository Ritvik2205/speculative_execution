.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and bl, 38 # instrumentation
cmovno rbx, rax
test ax, 30932
and ebx, 35
or cx, ax
cmovp esi, eax
bts rax, 77
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 20
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
test rsi, 92
jmp .bb_0.1
.bb_0.1:
and bx, 92
cmovbe ax, bx
or sil, cl
or cl, 6
or al, al
test edx, -372470678
and rdi, 13
not edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
