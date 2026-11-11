.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 62
xor rsi, -117
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
xor dx, 11
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
cmovp eax, esi
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
cmovp eax, esi
and rdx, rdi
and dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
or dil, 16
btc cx, 115
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
xor bl, al
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
cmovle ecx, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
