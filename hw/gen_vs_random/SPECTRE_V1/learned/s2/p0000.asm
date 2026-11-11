.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
or di, cx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
and sil, sil
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
lea rax, qword ptr [rsi + rdx + 7]
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
cmovp esi, ebx
dec bl
lea rbx, qword ptr [rbx + rdx + 30]
imul bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
bts rsi, 234
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
