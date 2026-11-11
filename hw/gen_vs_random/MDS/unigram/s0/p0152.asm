.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and bl, -74 # instrumentation
cmovns edi, ebx
bt eax, 37
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and esi, 83
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and cl, 78 # instrumentation
cmovs si, bx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
cmovbe si, di
btr ax, 193
bts ebx, edx
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
cmovnle rsi, rdi
bt bx, 253
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or dil, 12
cmovl bx, di
cmovnbe rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
