.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
lea rdi, qword ptr [rdx + rdi + 95]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 94
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
setp dil
or si, 0b1000000000000000 # instrumentation
bsf ax, si
btr ebx, 88
movsx rbx, dl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
