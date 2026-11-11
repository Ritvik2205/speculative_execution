.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
inc dl
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
lea eax, qword ptr [rdi + rbx + 62931]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
seto sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
sbb sil, -79
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
