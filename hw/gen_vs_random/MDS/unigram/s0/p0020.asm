.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
bt rsi, rcx
bts edx, esi
and edx, 7
xor bl, bl
xor bl, 2
cmovnz edx, ebx
and bl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
bt eax, 38
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
bts rdi, rdx
btr ebx, edi
bt rax, rsi
jmp .bb_0.1
.bb_0.1:
and cl, bl
bt ecx, 49
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
btc di, 8
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
