.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
setp dil
add al, 107 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
setz sil
or eax, esi
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
cmovz esi, eax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 42
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
lea bx, qword ptr [rbx + rbx]
cmp dx, 45
cmovnbe rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
lea cx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
