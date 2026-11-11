.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, cx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and cx, cx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and dl, -103 # instrumentation
cmovbe dx, dx
xor eax, -127
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or esi, ecx
test ax, 6779
cmovl dx, di
and bl, 68
bt rbx, 241
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
test dl, bl
and di, 99
bt dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
