.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 90
test sil, 29
add cl, cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 96
cmovl bx, di
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
add dl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and dl, 59
lea ebx, qword ptr [rdi + rcx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
add bl, 37 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 90
btc ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
