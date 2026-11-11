.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, si
bt dx, ax
test si, 9
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and si, -121
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
cmovp cx, ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
or al, 54
xor al, al
cmovnbe ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 50
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
btr rdx, 58
cmovp rax, rdi
cmovbe rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
