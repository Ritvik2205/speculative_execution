.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
cmp esi, 70
and ax, -22629
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
xor dl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
test al, -75
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
lea rax, qword ptr [rcx + rsi + 45]
xor di, 71
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
