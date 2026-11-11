.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
lea eax, qword ptr [rdi + rbx + 62931]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
seto sil
inc dl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
sbb sil, -79
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
