.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
lea ax, qword ptr [rcx + rdx + 12]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
not si
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
cmovbe esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
or al, al
cmovnp ax, dx
lea ebx, qword ptr [rdx + rbx + 31]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
add dl, -56 # instrumentation
cmovs rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
