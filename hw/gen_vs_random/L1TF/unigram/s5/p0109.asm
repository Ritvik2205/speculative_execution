.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
xor cx, di
and rbx, -64
sbb si, 97
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
add dl, 125 # instrumentation
cmovbe rdi, rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
xchg rax, rsi
add al, 100 # instrumentation
lea di, qword ptr [rax]
sbb bl, -88
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
