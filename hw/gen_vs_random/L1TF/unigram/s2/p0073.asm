.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmp bl, dil
setnl dl
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
add dl, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
cmovnb rsi, rdx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
sbb bl, -88
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
lea rcx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
lea rsi, qword ptr [rax]
setnl sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
