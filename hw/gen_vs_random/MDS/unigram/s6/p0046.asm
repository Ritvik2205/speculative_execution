.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
or edi, esi
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
cmovp cx, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
bt ax, di
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
test ebx, edi
and dil, -39
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
test dil, al
and cl, -14 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
