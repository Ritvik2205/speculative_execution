.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ebx, eax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 99
cmovo bx, bx
xor edi, 42
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
test edi, -1252846009
and cl, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
cmovnbe cx, bx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and al, 61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
