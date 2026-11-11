.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rax + rdx]
add dl, 83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
mov ax, bx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 95
and bl, -73
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 73
add sil, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rcx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
test dl, 48
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 91
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 22
cmovp esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
