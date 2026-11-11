.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, cx
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
test al, cl
xor ecx, 8
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
cmovnl rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, dil
or dl, -31
bt ax, 76
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test eax, 298249463
or ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and dx, 3
btr esi, esi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
