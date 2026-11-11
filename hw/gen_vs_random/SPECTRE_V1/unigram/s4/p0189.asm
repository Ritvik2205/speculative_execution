.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, -98
cmp di, 39
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
xor rcx, 68
cmp eax, 2
bts rdx, 23
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or ax, 12618
cmovno eax, edx
add cl, 29 # instrumentation
setnb al
btr esi, 13
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
add al, -47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
setnl sil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
