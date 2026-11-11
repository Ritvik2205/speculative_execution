.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
test dil, sil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rsi, rbx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 60
xor si, ax
test si, ax
cmovnb eax, edx
cmovs di, cx
xor rcx, 71
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and si, -121
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
btc cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
