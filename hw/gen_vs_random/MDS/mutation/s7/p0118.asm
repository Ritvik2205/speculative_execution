.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
xor eax, 1640090871
bts ax, cx
and cx, cx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
test dl, bl
and di, 99
and bl, 68
cmovl dx, di
test ax, -31596
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
bt dx, si
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
bt rbx, 241
or esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
