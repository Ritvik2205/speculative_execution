.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, 45
lea dx, qword ptr [rdx + rsi]
add al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
add cl, -84 # instrumentation
xchg rcx, rdi
setno bl
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
or di, 71
adc cl, al
lea si, qword ptr [rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
add dil, 80
add bl, 110 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
cmovp ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
