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
and cx, cx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
xor eax, 2063216578
bts ax, cx
jmp .bb_0.1
.bb_0.1:
or esi, ecx
bt rbx, 241
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and di, 91
cmovl dx, di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test dl, bl
bt dx, si
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and bl, 68
test ax, -31596
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
