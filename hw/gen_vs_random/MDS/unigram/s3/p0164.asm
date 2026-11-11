.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
cmovbe di, dx
and rax, -636362975
bt bx, 253
and cx, -2
bt eax, 151
cmovp esi, edi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
or cl, -77
and cl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
test eax, 298249463
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
bt rax, rsi
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
or ebx, -104
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
cmovnle ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
cmovb cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
