.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
bts ax, cx
and cx, cx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
xor eax, -127
and dl, -103 # instrumentation
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
or esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and bl, 68
cmovl dx, di
test ax, 6113
test dl, bl
and di, 91
bt dx, si
bt rbx, 241
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
