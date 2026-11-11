.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cx, ax
lea rax, qword ptr [rbx + rcx + 22]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
imul rax, rcx, 29
test bx, 80
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edx
btc si, 71
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
xchg dil, dl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
dec al
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 34
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
