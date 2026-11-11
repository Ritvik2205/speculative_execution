.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rax, 1250429750
bts bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and eax, 454700988
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 96
and cx, -8
xor cx, -18
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and cl, -111
and dl, 16 # instrumentation
cmovle eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
test edi, -1252846009
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 77
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and bl, 68
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
