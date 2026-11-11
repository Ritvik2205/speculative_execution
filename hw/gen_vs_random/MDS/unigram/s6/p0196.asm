.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 75
bt rsi, 238
and bl, 46 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and cx, cx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
or dil, dil
xor al, 8
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
jmp .bb_0.1
.bb_0.1:
and rdx, 35
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
xor al, dl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
