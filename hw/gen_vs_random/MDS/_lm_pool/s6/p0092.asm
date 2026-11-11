.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, cx
or rsi, 18
xor al, 55
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
not sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and ebx, 85
xor rcx, 71
xor ax, -1005
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or rax, -689609688
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
