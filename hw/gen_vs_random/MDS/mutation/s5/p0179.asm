.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, ecx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmovs rcx, rax
cmovnbe rbx, rax
and eax, -85386306
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
btr ecx, eax
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and ax, -10351
cmovnle rdx, rbx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
or bl, al
cmovns rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
test rax, 337705873
xor al, 115
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
