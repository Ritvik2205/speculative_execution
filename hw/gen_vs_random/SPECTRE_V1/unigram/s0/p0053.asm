.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
cmovle ebx, edx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
add bl, -61 # instrumentation
seto bl
neg rsi
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ebx, qword ptr [rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
xchg dl, cl
or cl, al
setnl dl
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rax]
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
