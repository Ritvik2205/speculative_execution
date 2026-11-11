.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and dl, -41 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rsi]
cmovo edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and al, dil
and al, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and al, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
not rdx
test dx, 16353
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 88
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and dl, -40 # instrumentation
cmovle ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
